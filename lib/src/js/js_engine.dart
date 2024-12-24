import 'dart:math';

import 'package:logging/logging.dart';

import 'jsparser/jsparser.dart';

class JSEngine {
  final _logger = Logger('JSEngine');
  Map<String, dynamic> context;

  JSEngine(this.context) {
    context['Date'] = (List<dynamic> args) => DateTime.parse(args[0]);
    context['Math'] = {
      'pow': (List<dynamic> args) => pow(args[0], args[1]),
    };
  }

  void parse(String code) {
    final parsed = parsejs(code);
    for (final node in parsed.body) {
      resolveNode(node);
    }
  }

  /// Parses the js code and runs the first function in the code returning the result
  /// The [params] are added to the context to be accessed from the function.
  static dynamic run(String code, [List<dynamic> params = const []]) {
    final parsed = parsejs(code);
    final mainFunc = (parsed.body[0] as FunctionDeclaration);
    final context = <String, dynamic>{};
    for (var i = 0; i < mainFunc.function.params.length; i++) {
      context[mainFunc.function.params[i].value] =
          i >= params.length ? null : params[i];
    }
    return JSEngine(context).runStatement(mainFunc.function.body);
  }

  dynamic runStatement(Statement statement) {
    resolveStatement(statement);
    return context['return'];
  }

  void resolveNode(Node node) {
    return switch (node) {
      Statement() => resolveStatement(node),
      Expression() => resolveExpression(node),
      Node() => throw UnimplementedError('Unknown node type: $node'),
    };
  }

  void resolveStatement(Statement statement) {
    return switch (statement) {
      VariableDeclaration() => resolveVariableDeclaration(statement),
      ExpressionStatement() => resolveExpression(statement.expression),
      BlockStatement() => statement.body.forEach(resolveStatement),
      ForStatement() => resolveForStatement(statement),
      ReturnStatement() => context['return'] =
          resolveExpression(statement.argument!),
      SwitchStatement() => resolveSwitchStatement(statement),
      BreakStatement() => throw BreakException(),
      ContinueStatement() => throw ContinueException(),
      TryStatement() => resolveTryStatement(statement),
      IfStatement() => resolveIfStatement(statement),
      Statement() =>
        throw UnimplementedError('Unknown statement type: $statement'),
    };
  }

  void resolveIfStatement(IfStatement statement) {
    final test = resolveExpression(statement.condition);
    if (toBoolean(test)) {
      resolveStatement(statement.then);
    } else {
      if (statement.otherwise != null) {
        resolveStatement(statement.otherwise!);
      }
    }
  }

  void resolveTryStatement(TryStatement statement) {
    try {
      statement.block.forEach(resolveNode);
    } catch (e) {
      _logger.finest('Caught exception: $e');
      final handler = statement.handler;
      if (handler == null) {
        rethrow;
      }
      context[handler.param.value] = e;
      statement.handler?.body.forEach(resolveNode);
    } finally {
      statement.finalizer?.forEach(resolveNode);
    }
  }

  void resolveSwitchStatement(SwitchStatement statement) {
    final discriminant = resolveExpression(statement.argument);
    _logger.finest('Switch statement: $statement($discriminant)');

    final cases = statement.cases;

    final switchTable = <dynamic, int>{};
    for (final (i, c) in cases.indexed) {
      final test = c.expression;
      if (test == null) {
        switchTable[null] = i;
        continue;
      }
      switchTable[resolveExpression(test)] = i;
    }
    var current = switchTable[discriminant] ?? switchTable[null];
    if (current == null) {
      return;
    }
    try {
      for (var i = current; i < cases.length; i++) {
        final c = cases[i];
        c.body.forEach(resolveStatement);
      }
    } on BreakException {
      return;
    }
  }

  void resolveForStatement(ForStatement statement) {
    final init = statement.init;
    final test = statement.condition;
    final update = statement.update;
    final body = statement.body;

    if (init != null) {
      resolveNode(init);
    }

    while (test == null || toBoolean(resolveExpression(test))) {
      try {
        resolveStatement(body);
      } on BreakException {
        break;
      } on ContinueException {
        // continue;
      }
      if (update != null) {
        resolveExpression(update);
      }
    }
  }

  void resolveVariableDeclaration(VariableDeclaration decls) {
    for (final decl in decls.declarations) {
      final name = decl.name.value;
      context[name] = decl.init == null ? null : resolveExpression(decl.init!);
    }
  }

  dynamic resolveCallExpression(CallExpression call) {
    final callee = resolveExpression(call.callee);
    final args = call.arguments;

    final resolvedArgs = args.map((arg) => resolveExpression(arg)).toList();
    _logger.finest(
        'Calling ${call.callee}[$callee] with ${resolvedArgs.length} args');
    // FunctionExpression returns a record with the actual function and the number of arguments it takes
    if (callee case (Function f, int())) {
      return f(resolvedArgs);
    }
    return callee(resolvedArgs);
  }

  dynamic resolveMemberExpression(MemberExpression member) {
    final obj = resolveExpression(member.object);
    final prop = member.property.value;

    if (obj is Map) {
      return obj[prop];
    }
    if (prop == 'slice') {
      return (List<dynamic> args) {
        return obj.substring(args[0], args[1]);
      };
    }
    if (prop == 'split') {
      assert(obj is String);
      return (List<dynamic> args) {
        return obj.split(args[0]);
      };
    }
    if (prop == 'join') {
      assert(obj is List);
      return (List<dynamic> args) {
        return obj.join(args[0]);
      };
    }
    if (prop == 'length') {
      if (obj is List || obj is String) {
        return obj.length;
      }
      if (obj case (Function(), int argC)) {
        return argC;
      }
      throw UnimplementedError('Unknown length property on: $obj');
    }
    if (prop == 'splice') {
      assert(obj is List);
      return (List<dynamic> args) {
        if (args.isEmpty) {
          throw ArgumentError('splice() requires at least 1 argument');
        }
        if (args.length == 1) {
          return _splice(obj, args[0]);
        }
        if (args.length == 2) {
          return _splice(obj, args[0], args[1]);
        }
        return _splice(obj, args[0], args[1], args.sublist(2));
      };
    }
    if (prop == 'reverse') {
      assert(obj is List);
      return (List<dynamic> args) {
        // reverse the list in place
        final reversed = obj.reversed.toList();
        obj.clear();
        obj.addAll(reversed);
        return obj;
      };
    }
    if (prop == 'forEach') {
      assert(obj is List);
      return (List<dynamic> args) {
        final func = args[0].$1 as Function;
        if (args.length > 1) {
          final thisArg = args[1];
          context['this'] = thisArg;
        }

        for (final (i, e) in (obj as List).indexed) {
          func([e, i, obj]);
        }
        // (obj as List).forEach((e) => func([e]));
      };
    }
    if (prop == 'unshift') {
      assert(obj is List);
      return (List<dynamic> args) {
        (obj as List).cast<dynamic>().insertAll(0, args);
        return obj.length;
      };
    }
    if (prop == 'push') {
      assert(obj is List);
      return (List<dynamic> args) {
        (obj as List).cast<dynamic>().addAll(args);
        return obj.length;
      };
    }
    if (prop == 'fromCharCode') {
      // assert member == String
      return (List<dynamic> args) {
        return String.fromCharCodes(args.cast<int>());
      };
    }
    if (prop == 'pop') {
      assert(obj is List);
      return (List<dynamic> args) {
        return obj.removeLast();
      };
    }
    if (prop == 'indexOf') {
      return (List<dynamic> args) {
        return obj.indexOf(args[0]);
      };
    }
    if (prop == 'charCodeAt') {
      return (List<dynamic> args) {
        return obj.codeUnitAt(args[0]);
      };
    }
    // Used for debugging, not actually needed for dechipering
    if (prop == 'log') {
      return (List<dynamic> args) {
        _logger.finest(args.join('\n'));
      };
    }
    throw UnimplementedError('Unknown member expression: $member.$prop');
  }

  dynamic resolveFunctionExpression(FunctionExpression func) {
    final node = func.function;
    return (
      (List<dynamic> args) {
        for (var i = 0; i < node.params.length; i++) {
          context[node.params[i].value] = i >= args.length ? null : args[i];
        }
        resolveStatement(node.body);
        if (context.containsKey('return')) {
          return context['return'];
        }
      },
      node.params.length
    );
  }

  dynamic resolveAssignmentExpression(AssignmentExpression expr) {
    final value = resolveExpression(expr.right);
    dynamic container = context;
    final left = expr.left;
    final name = switch (left) {
      NameExpression() => left.name.value,
      IndexExpression() => resolveExpression(left.property),
      _ => throw UnimplementedError('Invalid assignment target: $expr.left'),
    };
    if (left is IndexExpression) {
      container = resolveExpression(left.object);
    }

    _logger.finest('Assign ${container.runtimeType}[$name] ${expr.operator}');
    return switch (expr.operator) {
      '=' => container[name] = value,
      '+=' => container[name] += value,
      '-=' => container[name] -= value,
      '*=' => container[name] *= value,
      _ => throw UnimplementedError(
          'Unknown assignment operator: ${expr.operator}'),
    };
  }

  bool toBoolean(dynamic value) {
    return switch (value) {
      NaN() => false,
      null => false,
      DateTime() => true,
      List() => true,
      bool() => value,
      num() => value != 0,
      String() => value.isNotEmpty,
      _ => true,
    };
  }

  String typeof(dynamic value) {
    return switch (value) {
      NaN() => 'number',
      DateTime() => 'object',
      List() => 'object',
      bool() => 'boolean',
      num() => 'number',
      String() => 'string',
      null => 'undefined',
      _ => 'undefined',
    };
  }

  dynamic resolveBinaryExpression(BinaryExpression expr) {
    // && returns the first falsy value or the last value
    // || returns the first truthy value or the last value
    _logger.finest(
        'Binary(${expr.operator}) L:( ${expr.left} )  R:( ${expr.right} )');

    if (expr.operator == '&&' || expr.operator == '||') {
      final left = resolveExpression(expr.left);
      final leftBool = toBoolean(left);
      if (expr.operator == '&&' && !leftBool) {
        return left;
      }
      if (expr.operator == '||' && leftBool) {
        return left;
      }
      return resolveExpression(expr.right);
    }

    final left = resolveExpression(expr.left);
    final right = resolveExpression(expr.right);
    try {
      final res = switch (expr.operator) {
        '+' => left + right,
        '-' => left - right,
        '*' => left * right,
        '/' => coerceToNumber(left) / coerceToNumber(right),
        '%' => coerceToNumber(left) % coerceToNumber(right),
        '<' => coerceToNumber(left) < coerceToNumber(right),
        '<=' => coerceToNumber(left) <= coerceToNumber(right),
        '>' => coerceToNumber(left) > coerceToNumber(right),
        '>=' => coerceToNumber(left) >= coerceToNumber(right),
        '==' => left == right,
        '===' => left == right,
        '!==' => left != right,
        '!=' => left != right,
        '^' => coerceToNumber(left) ^ coerceToNumber(right),
        _ =>
          throw UnimplementedError('Unknown binary operator: ${expr.operator}'),
      };
      _logger.finest('Binary result: $res');
      return res;
    } on UnsupportedError {
      return const NaN();
    }
  }

  int coerceToNumber(dynamic value) {
    if (value is num) {
      return value.toInt();
    }
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
    if (value == null) {
      return 0;
    }
    if (value is bool) {
      return value ? 1 : 0;
    }
    if (value is DateTime) {
      return value.millisecondsSinceEpoch;
    }
    if (value is List) {
      return value.length;
    }

    throw UnimplementedError('Cannot coerce to number: $value');
  }

  dynamic resolveUnaryExpression(UnaryExpression expr) {
    final arg = resolveExpression(expr.argument);
    return switch (expr.operator) {
      '-' => -arg,
      '!' => !toBoolean(arg),
      'typeof' => typeof(arg),
      _ => throw UnimplementedError(
          'Unknown unary operator: ${expr.operator} on $arg'),
    };
  }

  dynamic resolveUpdateExpression(UpdateExpression expr) {
    final name = (expr.argument as NameExpression).name.value;
    return switch (expr.operator) {
      '++' => expr.isPrefix ? ++context[name] : context[name]++,
      '--' => expr.isPrefix ? --context[name] : context[name]--,
      _ =>
        throw UnimplementedError('Unknown update operator: ${expr.operator}'),
    };
  }

  dynamic resolveNameExpression(NameExpression expr) {
    return context[expr.name.value];
  }

  dynamic resolveArrayExpression(ArrayExpression expr) {
    return expr.expressions.nonNulls.map(resolveExpression).toList();
  }

  dynamic resolveRegexpExpression(RegexpExpression expr) {
    return RegExp(expr.regexp ?? '');
  }

  dynamic resolveIndexExpression(IndexExpression expr) {
    var index = resolveExpression(expr.property);
    if (index is double) {
      index = index.toInt();
    }
    return resolveExpression(expr.object)[index];
  }

  dynamic resolveSequenceExpression(SequenceExpression expr) {
    Object? last;
    for (final (i, e) in expr.expressions.indexed) {
      _logger.finest('Sequence($i) $e');
      last = resolveExpression(e);
    }
    return last;
  }

  dynamic resolveLiteralExpression(LiteralExpression expr) {
    return expr.value;
  }

  dynamic resolveConditionalExpression(ConditionalExpression expr) {
    final test = resolveExpression(expr.condition);
    return toBoolean(test)
        ? resolveExpression(expr.then)
        : resolveExpression(expr.otherwise);
  }

  dynamic resolveThisExpression() {
    return context['this'];
  }

  dynamic resolveExpression(Expression expr) {
    return switch (expr) {
      CallExpression() => resolveCallExpression(expr),
      MemberExpression() => resolveMemberExpression(expr),
      NameExpression() => resolveNameExpression(expr),
      LiteralExpression() => resolveLiteralExpression(expr),
      ArrayExpression() => resolveArrayExpression(expr),
      FunctionExpression() => resolveFunctionExpression(expr),
      AssignmentExpression() => resolveAssignmentExpression(expr),
      BinaryExpression() => resolveBinaryExpression(expr),
      UnaryExpression() => resolveUnaryExpression(expr),
      RegexpExpression() => resolveRegexpExpression(expr),
      UpdateExpression() => resolveUpdateExpression(expr),
      SequenceExpression() => resolveSequenceExpression(expr),
      IndexExpression() => resolveIndexExpression(expr),
      ConditionalExpression() => resolveConditionalExpression(expr),
      ThisExpression() => resolveThisExpression(),
      Expression() =>
        throw UnimplementedError('Unknown expression type: $expr'),
    };
  }
}

List<T> _splice<T>(List<T> array, int start,
    [int? deleteCount, List<T>? items]) {
  // Convert start to a valid index
  final length = array.length;

  if (start < 0) {
    start = (start + length).clamp(0, length);
  } else if (start > length) {
    start = length;
  }

  // If deleteCount is not provided, or greater than remaining items, remove all till the end
  if (deleteCount == null || deleteCount >= length - start) {
    deleteCount = length - start;
  } else if (deleteCount < 0) {
    deleteCount = 0;
  }

  // Remove the specified number of elements
  final deletedItems = array.sublist(start, start + deleteCount);
  array.removeRange(start, start + deleteCount);

  // Insert new items if provided
  if (items != null && items.isNotEmpty) {
    (array.cast<dynamic>()).insertAll(start, items);
  }

  return deletedItems;
}

final class NaN {
  const NaN();
}

final class ContinueException implements Exception {}

final class BreakException implements Exception {}

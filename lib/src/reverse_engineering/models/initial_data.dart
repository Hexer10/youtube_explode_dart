import 'package:meta/meta.dart';

import '../../extensions/helpers_extension.dart';

abstract class InitialData {
  @protected
  final JsonMap root;

  InitialData(this.root);
}

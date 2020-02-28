import 'package:equatable/equatable.dart';

/// Language information.
class Language extends Equatable {
  /// ISO 639-1 code of this language.
  final String code;

  /// Full English name of this language.
  final String name;

  /// Initializes an instance of [Language]
  const Language(this.code, this.name);

  @override
  List<Object> get props => [code, name];

  @override
  String toString() => 'Language: $name';
}

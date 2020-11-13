import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

/// Language information.
@JsonSerializable()
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

  ///
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

  ///
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

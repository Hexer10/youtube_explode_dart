import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';
part 'language.freezed.dart';

/// Language information.
@freezed
class Language with _$Language {
  /// Initializes an instance of [Language]
  const factory Language(

      /// ISO 639-1 code of this language.
      String code,

      /// Full English name of this language.
      String name) = _Language;

  const Language._();

  @override
  String toString() => 'Language: $name';

  ///
  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

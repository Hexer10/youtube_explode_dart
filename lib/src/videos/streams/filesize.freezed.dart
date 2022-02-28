// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filesize.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileSize _$FileSizeFromJson(Map<String, dynamic> json) {
  return _FileSize.fromJson(json);
}

/// @nodoc
class _$FileSizeTearOff {
  const _$FileSizeTearOff();

  _FileSize call(int totalBytes) {
    return _FileSize(
      totalBytes,
    );
  }

  FileSize fromJson(Map<String, Object?> json) {
    return FileSize.fromJson(json);
  }
}

/// @nodoc
const $FileSize = _$FileSizeTearOff();

/// @nodoc
mixin _$FileSize {
  /// Total bytes.
  int get totalBytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileSizeCopyWith<FileSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSizeCopyWith<$Res> {
  factory $FileSizeCopyWith(FileSize value, $Res Function(FileSize) then) =
      _$FileSizeCopyWithImpl<$Res>;
  $Res call({int totalBytes});
}

/// @nodoc
class _$FileSizeCopyWithImpl<$Res> implements $FileSizeCopyWith<$Res> {
  _$FileSizeCopyWithImpl(this._value, this._then);

  final FileSize _value;
  // ignore: unused_field
  final $Res Function(FileSize) _then;

  @override
  $Res call({
    Object? totalBytes = freezed,
  }) {
    return _then(_value.copyWith(
      totalBytes: totalBytes == freezed
          ? _value.totalBytes
          : totalBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FileSizeCopyWith<$Res> implements $FileSizeCopyWith<$Res> {
  factory _$FileSizeCopyWith(_FileSize value, $Res Function(_FileSize) then) =
      __$FileSizeCopyWithImpl<$Res>;
  @override
  $Res call({int totalBytes});
}

/// @nodoc
class __$FileSizeCopyWithImpl<$Res> extends _$FileSizeCopyWithImpl<$Res>
    implements _$FileSizeCopyWith<$Res> {
  __$FileSizeCopyWithImpl(_FileSize _value, $Res Function(_FileSize) _then)
      : super(_value, (v) => _then(v as _FileSize));

  @override
  _FileSize get _value => super._value as _FileSize;

  @override
  $Res call({
    Object? totalBytes = freezed,
  }) {
    return _then(_FileSize(
      totalBytes == freezed
          ? _value.totalBytes
          : totalBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileSize extends _FileSize {
  const _$_FileSize(this.totalBytes) : super._();

  factory _$_FileSize.fromJson(Map<String, dynamic> json) =>
      _$$_FileSizeFromJson(json);

  @override

  /// Total bytes.
  final int totalBytes;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileSize &&
            const DeepCollectionEquality()
                .equals(other.totalBytes, totalBytes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(totalBytes));

  @JsonKey(ignore: true)
  @override
  _$FileSizeCopyWith<_FileSize> get copyWith =>
      __$FileSizeCopyWithImpl<_FileSize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileSizeToJson(this);
  }
}

abstract class _FileSize extends FileSize {
  const factory _FileSize(int totalBytes) = _$_FileSize;
  const _FileSize._() : super._();

  factory _FileSize.fromJson(Map<String, dynamic> json) = _$_FileSize.fromJson;

  @override

  /// Total bytes.
  int get totalBytes;
  @override
  @JsonKey(ignore: true)
  _$FileSizeCopyWith<_FileSize> get copyWith =>
      throw _privateConstructorUsedError;
}

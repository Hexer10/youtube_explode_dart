// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filesize.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileSize _$FileSizeFromJson(Map<String, dynamic> json) {
  return _FileSize.fromJson(json);
}

/// @nodoc
mixin _$FileSize {
  /// Total bytes.
  int get totalBytes => throw _privateConstructorUsedError;

  /// Serializes this FileSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileSizeCopyWith<FileSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSizeCopyWith<$Res> {
  factory $FileSizeCopyWith(FileSize value, $Res Function(FileSize) then) =
      _$FileSizeCopyWithImpl<$Res, FileSize>;
  @useResult
  $Res call({int totalBytes});
}

/// @nodoc
class _$FileSizeCopyWithImpl<$Res, $Val extends FileSize>
    implements $FileSizeCopyWith<$Res> {
  _$FileSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBytes = null,
  }) {
    return _then(_value.copyWith(
      totalBytes: null == totalBytes
          ? _value.totalBytes
          : totalBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSizeImplCopyWith<$Res>
    implements $FileSizeCopyWith<$Res> {
  factory _$$FileSizeImplCopyWith(
          _$FileSizeImpl value, $Res Function(_$FileSizeImpl) then) =
      __$$FileSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalBytes});
}

/// @nodoc
class __$$FileSizeImplCopyWithImpl<$Res>
    extends _$FileSizeCopyWithImpl<$Res, _$FileSizeImpl>
    implements _$$FileSizeImplCopyWith<$Res> {
  __$$FileSizeImplCopyWithImpl(
      _$FileSizeImpl _value, $Res Function(_$FileSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalBytes = null,
  }) {
    return _then(_$FileSizeImpl(
      null == totalBytes
          ? _value.totalBytes
          : totalBytes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileSizeImpl extends _FileSize {
  const _$FileSizeImpl(this.totalBytes) : super._();

  factory _$FileSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileSizeImplFromJson(json);

  /// Total bytes.
  @override
  final int totalBytes;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSizeImpl &&
            (identical(other.totalBytes, totalBytes) ||
                other.totalBytes == totalBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalBytes);

  /// Create a copy of FileSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSizeImplCopyWith<_$FileSizeImpl> get copyWith =>
      __$$FileSizeImplCopyWithImpl<_$FileSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileSizeImplToJson(
      this,
    );
  }
}

abstract class _FileSize extends FileSize {
  const factory _FileSize(final int totalBytes) = _$FileSizeImpl;
  const _FileSize._() : super._();

  factory _FileSize.fromJson(Map<String, dynamic> json) =
      _$FileSizeImpl.fromJson;

  /// Total bytes.
  @override
  int get totalBytes;

  /// Create a copy of FileSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileSizeImplCopyWith<_$FileSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

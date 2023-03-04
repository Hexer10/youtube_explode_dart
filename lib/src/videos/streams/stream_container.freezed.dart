// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamContainer _$StreamContainerFromJson(Map<String, dynamic> json) {
  return _StreamContainer.fromJson(json);
}

/// @nodoc
mixin _$StreamContainer {
  /// Container name.
  /// Can be used as file extension
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamContainerCopyWith<StreamContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamContainerCopyWith<$Res> {
  factory $StreamContainerCopyWith(
          StreamContainer value, $Res Function(StreamContainer) then) =
      _$StreamContainerCopyWithImpl<$Res, StreamContainer>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$StreamContainerCopyWithImpl<$Res, $Val extends StreamContainer>
    implements $StreamContainerCopyWith<$Res> {
  _$StreamContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamContainerCopyWith<$Res>
    implements $StreamContainerCopyWith<$Res> {
  factory _$$_StreamContainerCopyWith(
          _$_StreamContainer value, $Res Function(_$_StreamContainer) then) =
      __$$_StreamContainerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_StreamContainerCopyWithImpl<$Res>
    extends _$StreamContainerCopyWithImpl<$Res, _$_StreamContainer>
    implements _$$_StreamContainerCopyWith<$Res> {
  __$$_StreamContainerCopyWithImpl(
      _$_StreamContainer _value, $Res Function(_$_StreamContainer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_StreamContainer(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamContainer extends _StreamContainer {
  const _$_StreamContainer(this.name) : super._();

  factory _$_StreamContainer.fromJson(Map<String, dynamic> json) =>
      _$$_StreamContainerFromJson(json);

  /// Container name.
  /// Can be used as file extension
  @override
  final String name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamContainer &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamContainerCopyWith<_$_StreamContainer> get copyWith =>
      __$$_StreamContainerCopyWithImpl<_$_StreamContainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamContainerToJson(
      this,
    );
  }
}

abstract class _StreamContainer extends StreamContainer {
  const factory _StreamContainer(final String name) = _$_StreamContainer;
  const _StreamContainer._() : super._();

  factory _StreamContainer.fromJson(Map<String, dynamic> json) =
      _$_StreamContainer.fromJson;

  @override

  /// Container name.
  /// Can be used as file extension
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StreamContainerCopyWith<_$_StreamContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

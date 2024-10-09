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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StreamContainer _$StreamContainerFromJson(Map<String, dynamic> json) {
  return _StreamContainer.fromJson(json);
}

/// @nodoc
mixin _$StreamContainer {
  /// Container name.
  /// Can be used as file extension
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StreamContainer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of StreamContainer
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$StreamContainerImplCopyWith<$Res>
    implements $StreamContainerCopyWith<$Res> {
  factory _$$StreamContainerImplCopyWith(_$StreamContainerImpl value,
          $Res Function(_$StreamContainerImpl) then) =
      __$$StreamContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StreamContainerImplCopyWithImpl<$Res>
    extends _$StreamContainerCopyWithImpl<$Res, _$StreamContainerImpl>
    implements _$$StreamContainerImplCopyWith<$Res> {
  __$$StreamContainerImplCopyWithImpl(
      _$StreamContainerImpl _value, $Res Function(_$StreamContainerImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamContainer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StreamContainerImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamContainerImpl extends _StreamContainer {
  const _$StreamContainerImpl(this.name) : super._();

  factory _$StreamContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamContainerImplFromJson(json);

  /// Container name.
  /// Can be used as file extension
  @override
  final String name;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamContainerImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of StreamContainer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamContainerImplCopyWith<_$StreamContainerImpl> get copyWith =>
      __$$StreamContainerImplCopyWithImpl<_$StreamContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamContainerImplToJson(
      this,
    );
  }
}

abstract class _StreamContainer extends StreamContainer {
  const factory _StreamContainer(final String name) = _$StreamContainerImpl;
  const _StreamContainer._() : super._();

  factory _StreamContainer.fromJson(Map<String, dynamic> json) =
      _$StreamContainerImpl.fromJson;

  /// Container name.
  /// Can be used as file extension
  @override
  String get name;

  /// Create a copy of StreamContainer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamContainerImplCopyWith<_$StreamContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

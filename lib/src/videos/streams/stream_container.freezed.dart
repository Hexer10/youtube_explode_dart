// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stream_container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StreamContainerTearOff {
  const _$StreamContainerTearOff();

  _StreamContainer _internal(String name) {
    return _StreamContainer(
      name,
    );
  }
}

/// @nodoc
const $StreamContainer = _$StreamContainerTearOff();

/// @nodoc
mixin _$StreamContainer {
  /// Container name.
  /// Can be used as file extension
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreamContainerCopyWith<StreamContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamContainerCopyWith<$Res> {
  factory $StreamContainerCopyWith(
          StreamContainer value, $Res Function(StreamContainer) then) =
      _$StreamContainerCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$StreamContainerCopyWithImpl<$Res>
    implements $StreamContainerCopyWith<$Res> {
  _$StreamContainerCopyWithImpl(this._value, this._then);

  final StreamContainer _value;
  // ignore: unused_field
  final $Res Function(StreamContainer) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StreamContainerCopyWith<$Res>
    implements $StreamContainerCopyWith<$Res> {
  factory _$StreamContainerCopyWith(
          _StreamContainer value, $Res Function(_StreamContainer) then) =
      __$StreamContainerCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$StreamContainerCopyWithImpl<$Res>
    extends _$StreamContainerCopyWithImpl<$Res>
    implements _$StreamContainerCopyWith<$Res> {
  __$StreamContainerCopyWithImpl(
      _StreamContainer _value, $Res Function(_StreamContainer) _then)
      : super(_value, (v) => _then(v as _StreamContainer));

  @override
  _StreamContainer get _value => super._value as _StreamContainer;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_StreamContainer(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreamContainer extends _StreamContainer {
  const _$_StreamContainer(this.name) : super._();

  @override

  /// Container name.
  /// Can be used as file extension
  final String name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreamContainer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$StreamContainerCopyWith<_StreamContainer> get copyWith =>
      __$StreamContainerCopyWithImpl<_StreamContainer>(this, _$identity);
}

abstract class _StreamContainer extends StreamContainer {
  const factory _StreamContainer(String name) = _$_StreamContainer;
  const _StreamContainer._() : super._();

  @override

  /// Container name.
  /// Can be used as file extension
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StreamContainerCopyWith<_StreamContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

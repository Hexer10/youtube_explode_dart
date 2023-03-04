// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Comment {
  /// Comment author name.
  String get author => throw _privateConstructorUsedError;

  /// Comment author channel id.
  ChannelId get channelId => throw _privateConstructorUsedError;

  /// Comment text.
  String get text => throw _privateConstructorUsedError;

  /// Comment likes count.
  int get likeCount => throw _privateConstructorUsedError;

  /// Published time as string. (For example: "2 years ago")
  String get publishedTime => throw _privateConstructorUsedError;

  /// Comment reply count.
  int get replyCount => throw _privateConstructorUsedError;

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  bool get isHearted => throw _privateConstructorUsedError;

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  String? get continuation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String author,
      ChannelId channelId,
      String text,
      int likeCount,
      String publishedTime,
      int replyCount,
      bool isHearted,
      @internal String? continuation});

  $ChannelIdCopyWith<$Res> get channelId;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? channelId = null,
    Object? text = null,
    Object? likeCount = null,
    Object? publishedTime = null,
    Object? replyCount = null,
    Object? isHearted = null,
    Object? continuation = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      publishedTime: null == publishedTime
          ? _value.publishedTime
          : publishedTime // ignore: cast_nullable_to_non_nullable
              as String,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      isHearted: null == isHearted
          ? _value.isHearted
          : isHearted // ignore: cast_nullable_to_non_nullable
              as bool,
      continuation: freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelIdCopyWith<$Res> get channelId {
    return $ChannelIdCopyWith<$Res>(_value.channelId, (value) {
      return _then(_value.copyWith(channelId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      ChannelId channelId,
      String text,
      int likeCount,
      String publishedTime,
      int replyCount,
      bool isHearted,
      @internal String? continuation});

  @override
  $ChannelIdCopyWith<$Res> get channelId;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? channelId = null,
    Object? text = null,
    Object? likeCount = null,
    Object? publishedTime = null,
    Object? replyCount = null,
    Object? isHearted = null,
    Object? continuation = freezed,
  }) {
    return _then(_$_Comment(
      null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as ChannelId,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == publishedTime
          ? _value.publishedTime
          : publishedTime // ignore: cast_nullable_to_non_nullable
              as String,
      null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == isHearted
          ? _value.isHearted
          : isHearted // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == continuation
          ? _value.continuation
          : continuation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Comment implements _Comment {
  const _$_Comment(
      this.author,
      this.channelId,
      this.text,
      this.likeCount,
      this.publishedTime,
      this.replyCount,
      this.isHearted,
      @internal this.continuation);

  /// Comment author name.
  @override
  final String author;

  /// Comment author channel id.
  @override
  final ChannelId channelId;

  /// Comment text.
  @override
  final String text;

  /// Comment likes count.
  @override
  final int likeCount;

  /// Published time as string. (For example: "2 years ago")
  @override
  final String publishedTime;

  /// Comment reply count.
  @override
  final int replyCount;

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  @override
  final bool isHearted;

  /// Used internally.
  /// Shouldn't be used in the code.
  @override
  @internal
  final String? continuation;

  @override
  String toString() {
    return 'Comment(author: $author, channelId: $channelId, text: $text, likeCount: $likeCount, publishedTime: $publishedTime, replyCount: $replyCount, isHearted: $isHearted, continuation: $continuation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.publishedTime, publishedTime) ||
                other.publishedTime == publishedTime) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.isHearted, isHearted) ||
                other.isHearted == isHearted) &&
            (identical(other.continuation, continuation) ||
                other.continuation == continuation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, author, channelId, text,
      likeCount, publishedTime, replyCount, isHearted, continuation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);
}

abstract class _Comment implements Comment {
  const factory _Comment(
      final String author,
      final ChannelId channelId,
      final String text,
      final int likeCount,
      final String publishedTime,
      final int replyCount,
      final bool isHearted,
      @internal final String? continuation) = _$_Comment;

  @override

  /// Comment author name.
  String get author;
  @override

  /// Comment author channel id.
  ChannelId get channelId;
  @override

  /// Comment text.
  String get text;
  @override

  /// Comment likes count.
  int get likeCount;
  @override

  /// Published time as string. (For example: "2 years ago")
  String get publishedTime;
  @override

  /// Comment reply count.
  int get replyCount;
  @override

  /// True if the comment is hearted by the creator.
//ignore: avoid_positional_boolean_parameters
  bool get isHearted;
  @override

  /// Used internally.
  /// Shouldn't be used in the code.
  @internal
  String? get continuation;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

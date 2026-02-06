// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewDeleteResponse _$ReviewDeleteResponseFromJson(Map<String, dynamic> json) {
  return _ReviewDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewDeleteResponse {
  @JsonKey(name: 'review_id')
  int get reviewId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewDeleteResponseCopyWith<ReviewDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDeleteResponseCopyWith<$Res> {
  factory $ReviewDeleteResponseCopyWith(
    ReviewDeleteResponse value,
    $Res Function(ReviewDeleteResponse) then,
  ) = _$ReviewDeleteResponseCopyWithImpl<$Res, ReviewDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'review_id') int reviewId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewDeleteResponseCopyWithImpl<
  $Res,
  $Val extends ReviewDeleteResponse
>
    implements $ReviewDeleteResponseCopyWith<$Res> {
  _$ReviewDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviewId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            reviewId: null == reviewId
                ? _value.reviewId
                : reviewId // ignore: cast_nullable_to_non_nullable
                      as int,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewDeleteResponseImplCopyWith<$Res>
    implements $ReviewDeleteResponseCopyWith<$Res> {
  factory _$$ReviewDeleteResponseImplCopyWith(
    _$ReviewDeleteResponseImpl value,
    $Res Function(_$ReviewDeleteResponseImpl) then,
  ) = __$$ReviewDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'review_id') int reviewId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewDeleteResponseImplCopyWithImpl<$Res>
    extends _$ReviewDeleteResponseCopyWithImpl<$Res, _$ReviewDeleteResponseImpl>
    implements _$$ReviewDeleteResponseImplCopyWith<$Res> {
  __$$ReviewDeleteResponseImplCopyWithImpl(
    _$ReviewDeleteResponseImpl _value,
    $Res Function(_$ReviewDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviewId = null, Object? message = freezed}) {
    return _then(
      _$ReviewDeleteResponseImpl(
        reviewId: null == reviewId
            ? _value.reviewId
            : reviewId // ignore: cast_nullable_to_non_nullable
                  as int,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDeleteResponseImpl implements _ReviewDeleteResponse {
  const _$ReviewDeleteResponseImpl({
    @JsonKey(name: 'review_id') required this.reviewId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ReviewDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'review_id')
  final int reviewId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewDeleteResponse(reviewId: $reviewId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDeleteResponseImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, message);

  /// Create a copy of ReviewDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDeleteResponseImplCopyWith<_$ReviewDeleteResponseImpl>
  get copyWith =>
      __$$ReviewDeleteResponseImplCopyWithImpl<_$ReviewDeleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDeleteResponseImplToJson(this);
  }
}

abstract class _ReviewDeleteResponse implements ReviewDeleteResponse {
  const factory _ReviewDeleteResponse({
    @JsonKey(name: 'review_id') required final int reviewId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewDeleteResponseImpl;

  factory _ReviewDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'review_id')
  int get reviewId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewDeleteResponseImplCopyWith<_$ReviewDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

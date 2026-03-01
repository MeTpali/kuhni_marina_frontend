// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewDeleteResponseDto _$ReviewDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ReviewDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewDeleteResponseDto {
  @JsonKey(name: 'review_id')
  int get reviewId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewDeleteResponseDtoCopyWith<ReviewDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDeleteResponseDtoCopyWith<$Res> {
  factory $ReviewDeleteResponseDtoCopyWith(
    ReviewDeleteResponseDto value,
    $Res Function(ReviewDeleteResponseDto) then,
  ) = _$ReviewDeleteResponseDtoCopyWithImpl<$Res, ReviewDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'review_id') int reviewId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ReviewDeleteResponseDto
>
    implements $ReviewDeleteResponseDtoCopyWith<$Res> {
  _$ReviewDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewDeleteResponseDto
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
abstract class _$$ReviewDeleteResponseDtoImplCopyWith<$Res>
    implements $ReviewDeleteResponseDtoCopyWith<$Res> {
  factory _$$ReviewDeleteResponseDtoImplCopyWith(
    _$ReviewDeleteResponseDtoImpl value,
    $Res Function(_$ReviewDeleteResponseDtoImpl) then,
  ) = __$$ReviewDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'review_id') int reviewId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ReviewDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ReviewDeleteResponseDtoImpl
        >
    implements _$$ReviewDeleteResponseDtoImplCopyWith<$Res> {
  __$$ReviewDeleteResponseDtoImplCopyWithImpl(
    _$ReviewDeleteResponseDtoImpl _value,
    $Res Function(_$ReviewDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reviewId = null, Object? message = freezed}) {
    return _then(
      _$ReviewDeleteResponseDtoImpl(
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
class _$ReviewDeleteResponseDtoImpl implements _ReviewDeleteResponseDto {
  const _$ReviewDeleteResponseDtoImpl({
    @JsonKey(name: 'review_id') required this.reviewId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ReviewDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'review_id')
  final int reviewId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewDeleteResponseDto(reviewId: $reviewId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDeleteResponseDtoImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reviewId, message);

  /// Create a copy of ReviewDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDeleteResponseDtoImplCopyWith<_$ReviewDeleteResponseDtoImpl>
  get copyWith =>
      __$$ReviewDeleteResponseDtoImplCopyWithImpl<
        _$ReviewDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ReviewDeleteResponseDto implements ReviewDeleteResponseDto {
  const factory _ReviewDeleteResponseDto({
    @JsonKey(name: 'review_id') required final int reviewId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewDeleteResponseDtoImpl;

  factory _ReviewDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ReviewDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'review_id')
  int get reviewId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewDeleteResponseDtoImplCopyWith<_$ReviewDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

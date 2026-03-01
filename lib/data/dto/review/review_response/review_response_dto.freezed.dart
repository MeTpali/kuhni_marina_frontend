// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewResponseDto _$ReviewResponseDtoFromJson(Map<String, dynamic> json) {
  return _ReviewResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name')
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_approved')
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewResponseDtoCopyWith<ReviewResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseDtoCopyWith<$Res> {
  factory $ReviewResponseDtoCopyWith(
    ReviewResponseDto value,
    $Res Function(ReviewResponseDto) then,
  ) = _$ReviewResponseDtoCopyWithImpl<$Res, ReviewResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'is_approved') bool isApproved,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewResponseDtoCopyWithImpl<$Res, $Val extends ReviewResponseDto>
    implements $ReviewResponseDtoCopyWith<$Res> {
  _$ReviewResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? isApproved = null,
    Object? createdAt = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            authorName: null == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            isApproved: null == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
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
abstract class _$$ReviewResponseDtoImplCopyWith<$Res>
    implements $ReviewResponseDtoCopyWith<$Res> {
  factory _$$ReviewResponseDtoImplCopyWith(
    _$ReviewResponseDtoImpl value,
    $Res Function(_$ReviewResponseDtoImpl) then,
  ) = __$$ReviewResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'is_approved') bool isApproved,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewResponseDtoImplCopyWithImpl<$Res>
    extends _$ReviewResponseDtoCopyWithImpl<$Res, _$ReviewResponseDtoImpl>
    implements _$$ReviewResponseDtoImplCopyWith<$Res> {
  __$$ReviewResponseDtoImplCopyWithImpl(
    _$ReviewResponseDtoImpl _value,
    $Res Function(_$ReviewResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? isApproved = null,
    Object? createdAt = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ReviewResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        authorName: null == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        isApproved: null == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
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
class _$ReviewResponseDtoImpl implements _ReviewResponseDto {
  const _$ReviewResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'author_name') required this.authorName,
    @JsonKey(name: 'rating') required this.rating,
    @JsonKey(name: 'text') required this.text,
    @JsonKey(name: 'is_approved') required this.isApproved,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ReviewResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'author_name')
  final String authorName;
  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'text')
  final String text;
  @override
  @JsonKey(name: 'is_approved')
  final bool isApproved;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewResponseDto(id: $id, authorName: $authorName, rating: $rating, text: $text, isApproved: $isApproved, createdAt: $createdAt, productId: $productId, userId: $userId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    authorName,
    rating,
    text,
    isApproved,
    createdAt,
    productId,
    userId,
    message,
  );

  /// Create a copy of ReviewResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewResponseDtoImplCopyWith<_$ReviewResponseDtoImpl> get copyWith =>
      __$$ReviewResponseDtoImplCopyWithImpl<_$ReviewResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResponseDtoImplToJson(this);
  }
}

abstract class _ReviewResponseDto implements ReviewResponseDto {
  const factory _ReviewResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'author_name') required final String authorName,
    @JsonKey(name: 'rating') required final int rating,
    @JsonKey(name: 'text') required final String text,
    @JsonKey(name: 'is_approved') required final bool isApproved,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'product_id') final int? productId,
    @JsonKey(name: 'user_id') final int? userId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewResponseDtoImpl;

  factory _ReviewResponseDto.fromJson(Map<String, dynamic> json) =
      _$ReviewResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'author_name')
  String get authorName;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  @JsonKey(name: 'is_approved')
  bool get isApproved;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewResponseDtoImplCopyWith<_$ReviewResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

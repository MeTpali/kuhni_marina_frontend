// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) {
  return _ReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name')
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_approved')
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewResponseCopyWith<ReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewResponseCopyWith<$Res> {
  factory $ReviewResponseCopyWith(
    ReviewResponse value,
    $Res Function(ReviewResponse) then,
  ) = _$ReviewResponseCopyWithImpl<$Res, ReviewResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_approved') bool isApproved,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewResponseCopyWithImpl<$Res, $Val extends ReviewResponse>
    implements $ReviewResponseCopyWith<$Res> {
  _$ReviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? isApproved = null,
    Object? createdAt = null,
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
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isApproved: null == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
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
abstract class _$$ReviewResponseImplCopyWith<$Res>
    implements $ReviewResponseCopyWith<$Res> {
  factory _$$ReviewResponseImplCopyWith(
    _$ReviewResponseImpl value,
    $Res Function(_$ReviewResponseImpl) then,
  ) = __$$ReviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'author_name') String authorName,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'text') String text,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'is_approved') bool isApproved,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewResponseImplCopyWithImpl<$Res>
    extends _$ReviewResponseCopyWithImpl<$Res, _$ReviewResponseImpl>
    implements _$$ReviewResponseImplCopyWith<$Res> {
  __$$ReviewResponseImplCopyWithImpl(
    _$ReviewResponseImpl _value,
    $Res Function(_$ReviewResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? isApproved = null,
    Object? createdAt = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ReviewResponseImpl(
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
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isApproved: null == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
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
class _$ReviewResponseImpl implements _ReviewResponse {
  const _$ReviewResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'author_name') required this.authorName,
    @JsonKey(name: 'rating') required this.rating,
    @JsonKey(name: 'text') required this.text,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'is_approved') required this.isApproved,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ReviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewResponseImplFromJson(json);

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
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'is_approved')
  final bool isApproved;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewResponse(id: $id, authorName: $authorName, rating: $rating, text: $text, productId: $productId, userId: $userId, isApproved: $isApproved, createdAt: $createdAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
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
    productId,
    userId,
    isApproved,
    createdAt,
    message,
  );

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewResponseImplCopyWith<_$ReviewResponseImpl> get copyWith =>
      __$$ReviewResponseImplCopyWithImpl<_$ReviewResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewResponseImplToJson(this);
  }
}

abstract class _ReviewResponse implements ReviewResponse {
  const factory _ReviewResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'author_name') required final String authorName,
    @JsonKey(name: 'rating') required final int rating,
    @JsonKey(name: 'text') required final String text,
    @JsonKey(name: 'product_id') final int? productId,
    @JsonKey(name: 'user_id') final int? userId,
    @JsonKey(name: 'is_approved') required final bool isApproved,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewResponseImpl;

  factory _ReviewResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewResponseImpl.fromJson;

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
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'is_approved')
  bool get isApproved;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewResponseImplCopyWith<_$ReviewResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

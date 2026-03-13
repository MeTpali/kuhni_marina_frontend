// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewCreateRequest {
  String get authorName => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  bool? get isApproved => throw _privateConstructorUsedError;

  /// Create a copy of ReviewCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCreateRequestCopyWith<ReviewCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCreateRequestCopyWith<$Res> {
  factory $ReviewCreateRequestCopyWith(
    ReviewCreateRequest value,
    $Res Function(ReviewCreateRequest) then,
  ) = _$ReviewCreateRequestCopyWithImpl<$Res, ReviewCreateRequest>;
  @useResult
  $Res call({
    String authorName,
    int rating,
    String text,
    int? productId,
    int? userId,
    bool? isApproved,
  });
}

/// @nodoc
class _$ReviewCreateRequestCopyWithImpl<$Res, $Val extends ReviewCreateRequest>
    implements $ReviewCreateRequestCopyWith<$Res> {
  _$ReviewCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? isApproved = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            isApproved: freezed == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewCreateRequestImplCopyWith<$Res>
    implements $ReviewCreateRequestCopyWith<$Res> {
  factory _$$ReviewCreateRequestImplCopyWith(
    _$ReviewCreateRequestImpl value,
    $Res Function(_$ReviewCreateRequestImpl) then,
  ) = __$$ReviewCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String authorName,
    int rating,
    String text,
    int? productId,
    int? userId,
    bool? isApproved,
  });
}

/// @nodoc
class __$$ReviewCreateRequestImplCopyWithImpl<$Res>
    extends _$ReviewCreateRequestCopyWithImpl<$Res, _$ReviewCreateRequestImpl>
    implements _$$ReviewCreateRequestImplCopyWith<$Res> {
  __$$ReviewCreateRequestImplCopyWithImpl(
    _$ReviewCreateRequestImpl _value,
    $Res Function(_$ReviewCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? rating = null,
    Object? text = null,
    Object? productId = freezed,
    Object? userId = freezed,
    Object? isApproved = freezed,
  }) {
    return _then(
      _$ReviewCreateRequestImpl(
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
        isApproved: freezed == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$ReviewCreateRequestImpl implements _ReviewCreateRequest {
  const _$ReviewCreateRequestImpl({
    required this.authorName,
    required this.rating,
    required this.text,
    this.productId,
    this.userId,
    this.isApproved = false,
  });

  @override
  final String authorName;
  @override
  final int rating;
  @override
  final String text;
  @override
  final int? productId;
  @override
  final int? userId;
  @override
  @JsonKey()
  final bool? isApproved;

  @override
  String toString() {
    return 'ReviewCreateRequest(authorName: $authorName, rating: $rating, text: $text, productId: $productId, userId: $userId, isApproved: $isApproved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewCreateRequestImpl &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    authorName,
    rating,
    text,
    productId,
    userId,
    isApproved,
  );

  /// Create a copy of ReviewCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewCreateRequestImplCopyWith<_$ReviewCreateRequestImpl> get copyWith =>
      __$$ReviewCreateRequestImplCopyWithImpl<_$ReviewCreateRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _ReviewCreateRequest implements ReviewCreateRequest {
  const factory _ReviewCreateRequest({
    required final String authorName,
    required final int rating,
    required final String text,
    final int? productId,
    final int? userId,
    final bool? isApproved,
  }) = _$ReviewCreateRequestImpl;

  @override
  String get authorName;
  @override
  int get rating;
  @override
  String get text;
  @override
  int? get productId;
  @override
  int? get userId;
  @override
  bool? get isApproved;

  /// Create a copy of ReviewCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewCreateRequestImplCopyWith<_$ReviewCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

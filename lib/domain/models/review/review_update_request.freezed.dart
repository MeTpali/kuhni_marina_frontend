// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ReviewUpdateRequest {
  String? get authorName => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  /// Create a copy of ReviewUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewUpdateRequestCopyWith<ReviewUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUpdateRequestCopyWith<$Res> {
  factory $ReviewUpdateRequestCopyWith(
    ReviewUpdateRequest value,
    $Res Function(ReviewUpdateRequest) then,
  ) = _$ReviewUpdateRequestCopyWithImpl<$Res, ReviewUpdateRequest>;
  @useResult
  $Res call({
    String? authorName,
    int? rating,
    String? text,
    int? productId,
    int? userId,
  });
}

/// @nodoc
class _$ReviewUpdateRequestCopyWithImpl<$Res, $Val extends ReviewUpdateRequest>
    implements $ReviewUpdateRequestCopyWith<$Res> {
  _$ReviewUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = freezed,
    Object? rating = freezed,
    Object? text = freezed,
    Object? productId = freezed,
    Object? userId = freezed,
  }) {
    return _then(
      _value.copyWith(
            authorName: freezed == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String?,
            rating: freezed == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewUpdateRequestImplCopyWith<$Res>
    implements $ReviewUpdateRequestCopyWith<$Res> {
  factory _$$ReviewUpdateRequestImplCopyWith(
    _$ReviewUpdateRequestImpl value,
    $Res Function(_$ReviewUpdateRequestImpl) then,
  ) = __$$ReviewUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? authorName,
    int? rating,
    String? text,
    int? productId,
    int? userId,
  });
}

/// @nodoc
class __$$ReviewUpdateRequestImplCopyWithImpl<$Res>
    extends _$ReviewUpdateRequestCopyWithImpl<$Res, _$ReviewUpdateRequestImpl>
    implements _$$ReviewUpdateRequestImplCopyWith<$Res> {
  __$$ReviewUpdateRequestImplCopyWithImpl(
    _$ReviewUpdateRequestImpl _value,
    $Res Function(_$ReviewUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = freezed,
    Object? rating = freezed,
    Object? text = freezed,
    Object? productId = freezed,
    Object? userId = freezed,
  }) {
    return _then(
      _$ReviewUpdateRequestImpl(
        authorName: freezed == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String?,
        rating: freezed == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$ReviewUpdateRequestImpl implements _ReviewUpdateRequest {
  const _$ReviewUpdateRequestImpl({
    this.authorName,
    this.rating,
    this.text,
    this.productId,
    this.userId,
  });

  @override
  final String? authorName;
  @override
  final int? rating;
  @override
  final String? text;
  @override
  final int? productId;
  @override
  final int? userId;

  @override
  String toString() {
    return 'ReviewUpdateRequest(authorName: $authorName, rating: $rating, text: $text, productId: $productId, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewUpdateRequestImpl &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authorName, rating, text, productId, userId);

  /// Create a copy of ReviewUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewUpdateRequestImplCopyWith<_$ReviewUpdateRequestImpl> get copyWith =>
      __$$ReviewUpdateRequestImplCopyWithImpl<_$ReviewUpdateRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _ReviewUpdateRequest implements ReviewUpdateRequest {
  const factory _ReviewUpdateRequest({
    final String? authorName,
    final int? rating,
    final String? text,
    final int? productId,
    final int? userId,
  }) = _$ReviewUpdateRequestImpl;

  @override
  String? get authorName;
  @override
  int? get rating;
  @override
  String? get text;
  @override
  int? get productId;
  @override
  int? get userId;

  /// Create a copy of ReviewUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewUpdateRequestImplCopyWith<_$ReviewUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

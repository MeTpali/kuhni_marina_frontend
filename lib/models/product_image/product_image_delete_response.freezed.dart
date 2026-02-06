// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageDeleteResponse _$ProductImageDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductImageDeleteResponse {
  @JsonKey(name: 'product_image_id')
  int get productImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductImageDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageDeleteResponseCopyWith<ProductImageDeleteResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageDeleteResponseCopyWith<$Res> {
  factory $ProductImageDeleteResponseCopyWith(
    ProductImageDeleteResponse value,
    $Res Function(ProductImageDeleteResponse) then,
  ) =
      _$ProductImageDeleteResponseCopyWithImpl<
        $Res,
        ProductImageDeleteResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_image_id') int productImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductImageDeleteResponseCopyWithImpl<
  $Res,
  $Val extends ProductImageDeleteResponse
>
    implements $ProductImageDeleteResponseCopyWith<$Res> {
  _$ProductImageDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productImageId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            productImageId: null == productImageId
                ? _value.productImageId
                : productImageId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductImageDeleteResponseImplCopyWith<$Res>
    implements $ProductImageDeleteResponseCopyWith<$Res> {
  factory _$$ProductImageDeleteResponseImplCopyWith(
    _$ProductImageDeleteResponseImpl value,
    $Res Function(_$ProductImageDeleteResponseImpl) then,
  ) = __$$ProductImageDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_image_id') int productImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductImageDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$ProductImageDeleteResponseCopyWithImpl<
          $Res,
          _$ProductImageDeleteResponseImpl
        >
    implements _$$ProductImageDeleteResponseImplCopyWith<$Res> {
  __$$ProductImageDeleteResponseImplCopyWithImpl(
    _$ProductImageDeleteResponseImpl _value,
    $Res Function(_$ProductImageDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productImageId = null, Object? message = freezed}) {
    return _then(
      _$ProductImageDeleteResponseImpl(
        productImageId: null == productImageId
            ? _value.productImageId
            : productImageId // ignore: cast_nullable_to_non_nullable
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
class _$ProductImageDeleteResponseImpl implements _ProductImageDeleteResponse {
  const _$ProductImageDeleteResponseImpl({
    @JsonKey(name: 'product_image_id') required this.productImageId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductImageDeleteResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductImageDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'product_image_id')
  final int productImageId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductImageDeleteResponse(productImageId: $productImageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageDeleteResponseImpl &&
            (identical(other.productImageId, productImageId) ||
                other.productImageId == productImageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productImageId, message);

  /// Create a copy of ProductImageDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageDeleteResponseImplCopyWith<_$ProductImageDeleteResponseImpl>
  get copyWith =>
      __$$ProductImageDeleteResponseImplCopyWithImpl<
        _$ProductImageDeleteResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageDeleteResponseImplToJson(this);
  }
}

abstract class _ProductImageDeleteResponse
    implements ProductImageDeleteResponse {
  const factory _ProductImageDeleteResponse({
    @JsonKey(name: 'product_image_id') required final int productImageId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductImageDeleteResponseImpl;

  factory _ProductImageDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ProductImageDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_image_id')
  int get productImageId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductImageDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageDeleteResponseImplCopyWith<_$ProductImageDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeResponse _$ProductAttributeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeResponse {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeResponseCopyWith<ProductAttributeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeResponseCopyWith<$Res> {
  factory $ProductAttributeResponseCopyWith(
    ProductAttributeResponse value,
    $Res Function(ProductAttributeResponse) then,
  ) = _$ProductAttributeResponseCopyWithImpl<$Res, ProductAttributeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductAttributeResponseCopyWithImpl<
  $Res,
  $Val extends ProductAttributeResponse
>
    implements $ProductAttributeResponseCopyWith<$Res> {
  _$ProductAttributeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int,
            attributeId: null == attributeId
                ? _value.attributeId
                : attributeId // ignore: cast_nullable_to_non_nullable
                      as int,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$ProductAttributeResponseImplCopyWith<$Res>
    implements $ProductAttributeResponseCopyWith<$Res> {
  factory _$$ProductAttributeResponseImplCopyWith(
    _$ProductAttributeResponseImpl value,
    $Res Function(_$ProductAttributeResponseImpl) then,
  ) = __$$ProductAttributeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductAttributeResponseImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeResponseCopyWithImpl<
          $Res,
          _$ProductAttributeResponseImpl
        >
    implements _$$ProductAttributeResponseImplCopyWith<$Res> {
  __$$ProductAttributeResponseImplCopyWithImpl(
    _$ProductAttributeResponseImpl _value,
    $Res Function(_$ProductAttributeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProductAttributeResponseImpl(
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
                  as int,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
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
class _$ProductAttributeResponseImpl implements _ProductAttributeResponse {
  const _$ProductAttributeResponseImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductAttributeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAttributeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductAttributeResponse(productId: $productId, attributeId: $attributeId, value: $value, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, attributeId, value, message);

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeResponseImplCopyWith<_$ProductAttributeResponseImpl>
  get copyWith =>
      __$$ProductAttributeResponseImplCopyWithImpl<
        _$ProductAttributeResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeResponseImplToJson(this);
  }
}

abstract class _ProductAttributeResponse implements ProductAttributeResponse {
  const factory _ProductAttributeResponse({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'value') required final String value,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductAttributeResponseImpl;

  factory _ProductAttributeResponse.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeResponseImplCopyWith<_$ProductAttributeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

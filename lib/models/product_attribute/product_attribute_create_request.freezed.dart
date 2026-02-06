// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeCreateRequest _$ProductAttributeCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeCreateRequest {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeCreateRequestCopyWith<ProductAttributeCreateRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCreateRequestCopyWith<$Res> {
  factory $ProductAttributeCreateRequestCopyWith(
    ProductAttributeCreateRequest value,
    $Res Function(ProductAttributeCreateRequest) then,
  ) =
      _$ProductAttributeCreateRequestCopyWithImpl<
        $Res,
        ProductAttributeCreateRequest
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class _$ProductAttributeCreateRequestCopyWithImpl<
  $Res,
  $Val extends ProductAttributeCreateRequest
>
    implements $ProductAttributeCreateRequestCopyWith<$Res> {
  _$ProductAttributeCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductAttributeCreateRequestImplCopyWith<$Res>
    implements $ProductAttributeCreateRequestCopyWith<$Res> {
  factory _$$ProductAttributeCreateRequestImplCopyWith(
    _$ProductAttributeCreateRequestImpl value,
    $Res Function(_$ProductAttributeCreateRequestImpl) then,
  ) = __$$ProductAttributeCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class __$$ProductAttributeCreateRequestImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeCreateRequestCopyWithImpl<
          $Res,
          _$ProductAttributeCreateRequestImpl
        >
    implements _$$ProductAttributeCreateRequestImplCopyWith<$Res> {
  __$$ProductAttributeCreateRequestImplCopyWithImpl(
    _$ProductAttributeCreateRequestImpl _value,
    $Res Function(_$ProductAttributeCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
  }) {
    return _then(
      _$ProductAttributeCreateRequestImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAttributeCreateRequestImpl
    implements _ProductAttributeCreateRequest {
  const _$ProductAttributeCreateRequestImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'value') required this.value,
  });

  factory _$ProductAttributeCreateRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductAttributeCreateRequestImplFromJson(json);

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
  String toString() {
    return 'ProductAttributeCreateRequest(productId: $productId, attributeId: $attributeId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeCreateRequestImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, attributeId, value);

  /// Create a copy of ProductAttributeCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeCreateRequestImplCopyWith<
    _$ProductAttributeCreateRequestImpl
  >
  get copyWith =>
      __$$ProductAttributeCreateRequestImplCopyWithImpl<
        _$ProductAttributeCreateRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeCreateRequestImplToJson(this);
  }
}

abstract class _ProductAttributeCreateRequest
    implements ProductAttributeCreateRequest {
  const factory _ProductAttributeCreateRequest({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'value') required final String value,
  }) = _$ProductAttributeCreateRequestImpl;

  factory _ProductAttributeCreateRequest.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of ProductAttributeCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeCreateRequestImplCopyWith<
    _$ProductAttributeCreateRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

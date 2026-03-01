// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeCreateRequestDto _$ProductAttributeCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeCreateRequestDto {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeCreateRequestDtoCopyWith<ProductAttributeCreateRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCreateRequestDtoCopyWith<$Res> {
  factory $ProductAttributeCreateRequestDtoCopyWith(
    ProductAttributeCreateRequestDto value,
    $Res Function(ProductAttributeCreateRequestDto) then,
  ) =
      _$ProductAttributeCreateRequestDtoCopyWithImpl<
        $Res,
        ProductAttributeCreateRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class _$ProductAttributeCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProductAttributeCreateRequestDto
>
    implements $ProductAttributeCreateRequestDtoCopyWith<$Res> {
  _$ProductAttributeCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeCreateRequestDto
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
abstract class _$$ProductAttributeCreateRequestDtoImplCopyWith<$Res>
    implements $ProductAttributeCreateRequestDtoCopyWith<$Res> {
  factory _$$ProductAttributeCreateRequestDtoImplCopyWith(
    _$ProductAttributeCreateRequestDtoImpl value,
    $Res Function(_$ProductAttributeCreateRequestDtoImpl) then,
  ) = __$$ProductAttributeCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class __$$ProductAttributeCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeCreateRequestDtoCopyWithImpl<
          $Res,
          _$ProductAttributeCreateRequestDtoImpl
        >
    implements _$$ProductAttributeCreateRequestDtoImplCopyWith<$Res> {
  __$$ProductAttributeCreateRequestDtoImplCopyWithImpl(
    _$ProductAttributeCreateRequestDtoImpl _value,
    $Res Function(_$ProductAttributeCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
  }) {
    return _then(
      _$ProductAttributeCreateRequestDtoImpl(
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
class _$ProductAttributeCreateRequestDtoImpl
    implements _ProductAttributeCreateRequestDto {
  const _$ProductAttributeCreateRequestDtoImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'value') required this.value,
  });

  factory _$ProductAttributeCreateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductAttributeCreateRequestDtoImplFromJson(json);

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
    return 'ProductAttributeCreateRequestDto(productId: $productId, attributeId: $attributeId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeCreateRequestDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, attributeId, value);

  /// Create a copy of ProductAttributeCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeCreateRequestDtoImplCopyWith<
    _$ProductAttributeCreateRequestDtoImpl
  >
  get copyWith =>
      __$$ProductAttributeCreateRequestDtoImplCopyWithImpl<
        _$ProductAttributeCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeCreateRequestDtoImplToJson(this);
  }
}

abstract class _ProductAttributeCreateRequestDto
    implements ProductAttributeCreateRequestDto {
  const factory _ProductAttributeCreateRequestDto({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'value') required final String value,
  }) = _$ProductAttributeCreateRequestDtoImpl;

  factory _ProductAttributeCreateRequestDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ProductAttributeCreateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of ProductAttributeCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeCreateRequestDtoImplCopyWith<
    _$ProductAttributeCreateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

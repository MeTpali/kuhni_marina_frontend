// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeResponseDto _$ProductAttributeResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeResponseDto {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeResponseDtoCopyWith<ProductAttributeResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeResponseDtoCopyWith<$Res> {
  factory $ProductAttributeResponseDtoCopyWith(
    ProductAttributeResponseDto value,
    $Res Function(ProductAttributeResponseDto) then,
  ) =
      _$ProductAttributeResponseDtoCopyWithImpl<
        $Res,
        ProductAttributeResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductAttributeResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductAttributeResponseDto
>
    implements $ProductAttributeResponseDtoCopyWith<$Res> {
  _$ProductAttributeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeResponseDto
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
abstract class _$$ProductAttributeResponseDtoImplCopyWith<$Res>
    implements $ProductAttributeResponseDtoCopyWith<$Res> {
  factory _$$ProductAttributeResponseDtoImplCopyWith(
    _$ProductAttributeResponseDtoImpl value,
    $Res Function(_$ProductAttributeResponseDtoImpl) then,
  ) = __$$ProductAttributeResponseDtoImplCopyWithImpl<$Res>;
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
class __$$ProductAttributeResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeResponseDtoCopyWithImpl<
          $Res,
          _$ProductAttributeResponseDtoImpl
        >
    implements _$$ProductAttributeResponseDtoImplCopyWith<$Res> {
  __$$ProductAttributeResponseDtoImplCopyWithImpl(
    _$ProductAttributeResponseDtoImpl _value,
    $Res Function(_$ProductAttributeResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeResponseDto
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
      _$ProductAttributeResponseDtoImpl(
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
class _$ProductAttributeResponseDtoImpl
    implements _ProductAttributeResponseDto {
  const _$ProductAttributeResponseDtoImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductAttributeResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductAttributeResponseDtoImplFromJson(json);

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
    return 'ProductAttributeResponseDto(productId: $productId, attributeId: $attributeId, value: $value, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeResponseDtoImpl &&
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

  /// Create a copy of ProductAttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeResponseDtoImplCopyWith<_$ProductAttributeResponseDtoImpl>
  get copyWith =>
      __$$ProductAttributeResponseDtoImplCopyWithImpl<
        _$ProductAttributeResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeResponseDtoImplToJson(this);
  }
}

abstract class _ProductAttributeResponseDto
    implements ProductAttributeResponseDto {
  const factory _ProductAttributeResponseDto({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'value') required final String value,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductAttributeResponseDtoImpl;

  factory _ProductAttributeResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeResponseDtoImpl.fromJson;

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

  /// Create a copy of ProductAttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeResponseDtoImplCopyWith<_$ProductAttributeResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

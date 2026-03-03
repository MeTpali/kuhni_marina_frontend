// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_discount_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductDiscountInfoDto _$ProductDiscountInfoDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductDiscountInfoDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDiscountInfoDto {
  @JsonKey(name: 'discount_percent')
  String? get discountPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_amount')
  String? get discountAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  String? get finalPrice => throw _privateConstructorUsedError;

  /// Serializes this ProductDiscountInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDiscountInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDiscountInfoDtoCopyWith<ProductDiscountInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDiscountInfoDtoCopyWith<$Res> {
  factory $ProductDiscountInfoDtoCopyWith(
    ProductDiscountInfoDto value,
    $Res Function(ProductDiscountInfoDto) then,
  ) = _$ProductDiscountInfoDtoCopyWithImpl<$Res, ProductDiscountInfoDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'discount_percent') String? discountPercent,
    @JsonKey(name: 'discount_amount') String? discountAmount,
    @JsonKey(name: 'final_price') String? finalPrice,
  });
}

/// @nodoc
class _$ProductDiscountInfoDtoCopyWithImpl<
  $Res,
  $Val extends ProductDiscountInfoDto
>
    implements $ProductDiscountInfoDtoCopyWith<$Res> {
  _$ProductDiscountInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDiscountInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountPercent = freezed,
    Object? discountAmount = freezed,
    Object? finalPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            discountPercent: freezed == discountPercent
                ? _value.discountPercent
                : discountPercent // ignore: cast_nullable_to_non_nullable
                      as String?,
            discountAmount: freezed == discountAmount
                ? _value.discountAmount
                : discountAmount // ignore: cast_nullable_to_non_nullable
                      as String?,
            finalPrice: freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductDiscountInfoDtoImplCopyWith<$Res>
    implements $ProductDiscountInfoDtoCopyWith<$Res> {
  factory _$$ProductDiscountInfoDtoImplCopyWith(
    _$ProductDiscountInfoDtoImpl value,
    $Res Function(_$ProductDiscountInfoDtoImpl) then,
  ) = __$$ProductDiscountInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'discount_percent') String? discountPercent,
    @JsonKey(name: 'discount_amount') String? discountAmount,
    @JsonKey(name: 'final_price') String? finalPrice,
  });
}

/// @nodoc
class __$$ProductDiscountInfoDtoImplCopyWithImpl<$Res>
    extends
        _$ProductDiscountInfoDtoCopyWithImpl<$Res, _$ProductDiscountInfoDtoImpl>
    implements _$$ProductDiscountInfoDtoImplCopyWith<$Res> {
  __$$ProductDiscountInfoDtoImplCopyWithImpl(
    _$ProductDiscountInfoDtoImpl _value,
    $Res Function(_$ProductDiscountInfoDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDiscountInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountPercent = freezed,
    Object? discountAmount = freezed,
    Object? finalPrice = freezed,
  }) {
    return _then(
      _$ProductDiscountInfoDtoImpl(
        discountPercent: freezed == discountPercent
            ? _value.discountPercent
            : discountPercent // ignore: cast_nullable_to_non_nullable
                  as String?,
        discountAmount: freezed == discountAmount
            ? _value.discountAmount
            : discountAmount // ignore: cast_nullable_to_non_nullable
                  as String?,
        finalPrice: freezed == finalPrice
            ? _value.finalPrice
            : finalPrice // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDiscountInfoDtoImpl implements _ProductDiscountInfoDto {
  const _$ProductDiscountInfoDtoImpl({
    @JsonKey(name: 'discount_percent') this.discountPercent,
    @JsonKey(name: 'discount_amount') this.discountAmount,
    @JsonKey(name: 'final_price') this.finalPrice,
  });

  factory _$ProductDiscountInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDiscountInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: 'discount_percent')
  final String? discountPercent;
  @override
  @JsonKey(name: 'discount_amount')
  final String? discountAmount;
  @override
  @JsonKey(name: 'final_price')
  final String? finalPrice;

  @override
  String toString() {
    return 'ProductDiscountInfoDto(discountPercent: $discountPercent, discountAmount: $discountAmount, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDiscountInfoDtoImpl &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discountPercent, discountAmount, finalPrice);

  /// Create a copy of ProductDiscountInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDiscountInfoDtoImplCopyWith<_$ProductDiscountInfoDtoImpl>
  get copyWith =>
      __$$ProductDiscountInfoDtoImplCopyWithImpl<_$ProductDiscountInfoDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDiscountInfoDtoImplToJson(this);
  }
}

abstract class _ProductDiscountInfoDto implements ProductDiscountInfoDto {
  const factory _ProductDiscountInfoDto({
    @JsonKey(name: 'discount_percent') final String? discountPercent,
    @JsonKey(name: 'discount_amount') final String? discountAmount,
    @JsonKey(name: 'final_price') final String? finalPrice,
  }) = _$ProductDiscountInfoDtoImpl;

  factory _ProductDiscountInfoDto.fromJson(Map<String, dynamic> json) =
      _$ProductDiscountInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: 'discount_percent')
  String? get discountPercent;
  @override
  @JsonKey(name: 'discount_amount')
  String? get discountAmount;
  @override
  @JsonKey(name: 'final_price')
  String? get finalPrice;

  /// Create a copy of ProductDiscountInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDiscountInfoDtoImplCopyWith<_$ProductDiscountInfoDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

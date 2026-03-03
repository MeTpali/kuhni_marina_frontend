// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_discount_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductDiscountInfo {
  String? get discountPercent => throw _privateConstructorUsedError;
  String? get discountAmount => throw _privateConstructorUsedError;
  String? get finalPrice => throw _privateConstructorUsedError;

  /// Create a copy of ProductDiscountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDiscountInfoCopyWith<ProductDiscountInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDiscountInfoCopyWith<$Res> {
  factory $ProductDiscountInfoCopyWith(
    ProductDiscountInfo value,
    $Res Function(ProductDiscountInfo) then,
  ) = _$ProductDiscountInfoCopyWithImpl<$Res, ProductDiscountInfo>;
  @useResult
  $Res call({
    String? discountPercent,
    String? discountAmount,
    String? finalPrice,
  });
}

/// @nodoc
class _$ProductDiscountInfoCopyWithImpl<$Res, $Val extends ProductDiscountInfo>
    implements $ProductDiscountInfoCopyWith<$Res> {
  _$ProductDiscountInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDiscountInfo
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
abstract class _$$ProductDiscountInfoImplCopyWith<$Res>
    implements $ProductDiscountInfoCopyWith<$Res> {
  factory _$$ProductDiscountInfoImplCopyWith(
    _$ProductDiscountInfoImpl value,
    $Res Function(_$ProductDiscountInfoImpl) then,
  ) = __$$ProductDiscountInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? discountPercent,
    String? discountAmount,
    String? finalPrice,
  });
}

/// @nodoc
class __$$ProductDiscountInfoImplCopyWithImpl<$Res>
    extends _$ProductDiscountInfoCopyWithImpl<$Res, _$ProductDiscountInfoImpl>
    implements _$$ProductDiscountInfoImplCopyWith<$Res> {
  __$$ProductDiscountInfoImplCopyWithImpl(
    _$ProductDiscountInfoImpl _value,
    $Res Function(_$ProductDiscountInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDiscountInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountPercent = freezed,
    Object? discountAmount = freezed,
    Object? finalPrice = freezed,
  }) {
    return _then(
      _$ProductDiscountInfoImpl(
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

class _$ProductDiscountInfoImpl implements _ProductDiscountInfo {
  const _$ProductDiscountInfoImpl({
    this.discountPercent,
    this.discountAmount,
    this.finalPrice,
  });

  @override
  final String? discountPercent;
  @override
  final String? discountAmount;
  @override
  final String? finalPrice;

  @override
  String toString() {
    return 'ProductDiscountInfo(discountPercent: $discountPercent, discountAmount: $discountAmount, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDiscountInfoImpl &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, discountPercent, discountAmount, finalPrice);

  /// Create a copy of ProductDiscountInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDiscountInfoImplCopyWith<_$ProductDiscountInfoImpl> get copyWith =>
      __$$ProductDiscountInfoImplCopyWithImpl<_$ProductDiscountInfoImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductDiscountInfo implements ProductDiscountInfo {
  const factory _ProductDiscountInfo({
    final String? discountPercent,
    final String? discountAmount,
    final String? finalPrice,
  }) = _$ProductDiscountInfoImpl;

  @override
  String? get discountPercent;
  @override
  String? get discountAmount;
  @override
  String? get finalPrice;

  /// Create a copy of ProductDiscountInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDiscountInfoImplCopyWith<_$ProductDiscountInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

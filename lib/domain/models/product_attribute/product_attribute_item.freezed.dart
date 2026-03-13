// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductAttributeItem {
  int get productId => throw _privateConstructorUsedError;
  int get attributeId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeItemCopyWith<ProductAttributeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeItemCopyWith<$Res> {
  factory $ProductAttributeItemCopyWith(
    ProductAttributeItem value,
    $Res Function(ProductAttributeItem) then,
  ) = _$ProductAttributeItemCopyWithImpl<$Res, ProductAttributeItem>;
  @useResult
  $Res call({int productId, int attributeId, String value});
}

/// @nodoc
class _$ProductAttributeItemCopyWithImpl<
  $Res,
  $Val extends ProductAttributeItem
>
    implements $ProductAttributeItemCopyWith<$Res> {
  _$ProductAttributeItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeItem
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
abstract class _$$ProductAttributeItemImplCopyWith<$Res>
    implements $ProductAttributeItemCopyWith<$Res> {
  factory _$$ProductAttributeItemImplCopyWith(
    _$ProductAttributeItemImpl value,
    $Res Function(_$ProductAttributeItemImpl) then,
  ) = __$$ProductAttributeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int attributeId, String value});
}

/// @nodoc
class __$$ProductAttributeItemImplCopyWithImpl<$Res>
    extends _$ProductAttributeItemCopyWithImpl<$Res, _$ProductAttributeItemImpl>
    implements _$$ProductAttributeItemImplCopyWith<$Res> {
  __$$ProductAttributeItemImplCopyWithImpl(
    _$ProductAttributeItemImpl _value,
    $Res Function(_$ProductAttributeItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? attributeId = null,
    Object? value = null,
  }) {
    return _then(
      _$ProductAttributeItemImpl(
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

class _$ProductAttributeItemImpl implements _ProductAttributeItem {
  const _$ProductAttributeItemImpl({
    required this.productId,
    required this.attributeId,
    required this.value,
  });

  @override
  final int productId;
  @override
  final int attributeId;
  @override
  final String value;

  @override
  String toString() {
    return 'ProductAttributeItem(productId: $productId, attributeId: $attributeId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeItemImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, attributeId, value);

  /// Create a copy of ProductAttributeItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeItemImplCopyWith<_$ProductAttributeItemImpl>
  get copyWith =>
      __$$ProductAttributeItemImplCopyWithImpl<_$ProductAttributeItemImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductAttributeItem implements ProductAttributeItem {
  const factory _ProductAttributeItem({
    required final int productId,
    required final int attributeId,
    required final String value,
  }) = _$ProductAttributeItemImpl;

  @override
  int get productId;
  @override
  int get attributeId;
  @override
  String get value;

  /// Create a copy of ProductAttributeItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeItemImplCopyWith<_$ProductAttributeItemImpl>
  get copyWith => throw _privateConstructorUsedError;
}

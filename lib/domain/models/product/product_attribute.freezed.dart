// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductAttribute {
  int get attributeId => throw _privateConstructorUsedError;
  String get attributeName => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String? get attributeUnit => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeCopyWith<ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCopyWith<$Res> {
  factory $ProductAttributeCopyWith(
    ProductAttribute value,
    $Res Function(ProductAttribute) then,
  ) = _$ProductAttributeCopyWithImpl<$Res, ProductAttribute>;
  @useResult
  $Res call({
    int attributeId,
    String attributeName,
    String value,
    String? attributeUnit,
  });
}

/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res, $Val extends ProductAttribute>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? value = null,
    Object? attributeUnit = freezed,
  }) {
    return _then(
      _value.copyWith(
            attributeId: null == attributeId
                ? _value.attributeId
                : attributeId // ignore: cast_nullable_to_non_nullable
                      as int,
            attributeName: null == attributeName
                ? _value.attributeName
                : attributeName // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            attributeUnit: freezed == attributeUnit
                ? _value.attributeUnit
                : attributeUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductAttributeImplCopyWith<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  factory _$$ProductAttributeImplCopyWith(
    _$ProductAttributeImpl value,
    $Res Function(_$ProductAttributeImpl) then,
  ) = __$$ProductAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int attributeId,
    String attributeName,
    String value,
    String? attributeUnit,
  });
}

/// @nodoc
class __$$ProductAttributeImplCopyWithImpl<$Res>
    extends _$ProductAttributeCopyWithImpl<$Res, _$ProductAttributeImpl>
    implements _$$ProductAttributeImplCopyWith<$Res> {
  __$$ProductAttributeImplCopyWithImpl(
    _$ProductAttributeImpl _value,
    $Res Function(_$ProductAttributeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? value = null,
    Object? attributeUnit = freezed,
  }) {
    return _then(
      _$ProductAttributeImpl(
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
                  as int,
        attributeName: null == attributeName
            ? _value.attributeName
            : attributeName // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        attributeUnit: freezed == attributeUnit
            ? _value.attributeUnit
            : attributeUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ProductAttributeImpl implements _ProductAttribute {
  const _$ProductAttributeImpl({
    required this.attributeId,
    required this.attributeName,
    required this.value,
    this.attributeUnit,
  });

  @override
  final int attributeId;
  @override
  final String attributeName;
  @override
  final String value;
  @override
  final String? attributeUnit;

  @override
  String toString() {
    return 'ProductAttribute(attributeId: $attributeId, attributeName: $attributeName, value: $value, attributeUnit: $attributeUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.attributeUnit, attributeUnit) ||
                other.attributeUnit == attributeUnit));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    attributeId,
    attributeName,
    value,
    attributeUnit,
  );

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      __$$ProductAttributeImplCopyWithImpl<_$ProductAttributeImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductAttribute implements ProductAttribute {
  const factory _ProductAttribute({
    required final int attributeId,
    required final String attributeName,
    required final String value,
    final String? attributeUnit,
  }) = _$ProductAttributeImpl;

  @override
  int get attributeId;
  @override
  String get attributeName;
  @override
  String get value;
  @override
  String? get attributeUnit;

  /// Create a copy of ProductAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

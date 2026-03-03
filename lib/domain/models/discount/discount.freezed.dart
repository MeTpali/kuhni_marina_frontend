// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Discount {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DiscountType get discountType => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  DiscountScope get scope => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  ProductType? get productType => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCopyWith<Discount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCopyWith<$Res> {
  factory $DiscountCopyWith(Discount value, $Res Function(Discount) then) =
      _$DiscountCopyWithImpl<$Res, Discount>;
  @useResult
  $Res call({
    int id,
    String name,
    DiscountType discountType,
    String value,
    DiscountScope scope,
    String startDate,
    String endDate,
    bool isActive,
    String createdAt,
    int? productId,
    int? categoryId,
    ProductType? productType,
    int priority,
    String? updatedAt,
  });
}

/// @nodoc
class _$DiscountCopyWithImpl<$Res, $Val extends Discount>
    implements $DiscountCopyWith<$Res> {
  _$DiscountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? discountType = null,
    Object? value = null,
    Object? scope = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? productType = freezed,
    Object? priority = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            discountType: null == discountType
                ? _value.discountType
                : discountType // ignore: cast_nullable_to_non_nullable
                      as DiscountType,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            scope: null == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as DiscountScope,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: freezed == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int?,
            categoryId: freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int?,
            productType: freezed == productType
                ? _value.productType
                : productType // ignore: cast_nullable_to_non_nullable
                      as ProductType?,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiscountImplCopyWith<$Res>
    implements $DiscountCopyWith<$Res> {
  factory _$$DiscountImplCopyWith(
    _$DiscountImpl value,
    $Res Function(_$DiscountImpl) then,
  ) = __$$DiscountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    DiscountType discountType,
    String value,
    DiscountScope scope,
    String startDate,
    String endDate,
    bool isActive,
    String createdAt,
    int? productId,
    int? categoryId,
    ProductType? productType,
    int priority,
    String? updatedAt,
  });
}

/// @nodoc
class __$$DiscountImplCopyWithImpl<$Res>
    extends _$DiscountCopyWithImpl<$Res, _$DiscountImpl>
    implements _$$DiscountImplCopyWith<$Res> {
  __$$DiscountImplCopyWithImpl(
    _$DiscountImpl _value,
    $Res Function(_$DiscountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? discountType = null,
    Object? value = null,
    Object? scope = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? productType = freezed,
    Object? priority = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$DiscountImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        discountType: null == discountType
            ? _value.discountType
            : discountType // ignore: cast_nullable_to_non_nullable
                  as DiscountType,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        scope: null == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as DiscountScope,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: freezed == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int?,
        categoryId: freezed == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int?,
        productType: freezed == productType
            ? _value.productType
            : productType // ignore: cast_nullable_to_non_nullable
                  as ProductType?,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DiscountImpl implements _Discount {
  const _$DiscountImpl({
    required this.id,
    required this.name,
    required this.discountType,
    required this.value,
    required this.scope,
    required this.startDate,
    required this.endDate,
    required this.isActive,
    required this.createdAt,
    this.productId,
    this.categoryId,
    this.productType,
    this.priority = 0,
    this.updatedAt,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final DiscountType discountType;
  @override
  final String value;
  @override
  final DiscountScope scope;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final bool isActive;
  @override
  final String createdAt;
  @override
  final int? productId;
  @override
  final int? categoryId;
  @override
  final ProductType? productType;
  @override
  @JsonKey()
  final int priority;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Discount(id: $id, name: $name, discountType: $discountType, value: $value, scope: $scope, startDate: $startDate, endDate: $endDate, isActive: $isActive, createdAt: $createdAt, productId: $productId, categoryId: $categoryId, productType: $productType, priority: $priority, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    discountType,
    value,
    scope,
    startDate,
    endDate,
    isActive,
    createdAt,
    productId,
    categoryId,
    productType,
    priority,
    updatedAt,
  );

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      __$$DiscountImplCopyWithImpl<_$DiscountImpl>(this, _$identity);
}

abstract class _Discount implements Discount {
  const factory _Discount({
    required final int id,
    required final String name,
    required final DiscountType discountType,
    required final String value,
    required final DiscountScope scope,
    required final String startDate,
    required final String endDate,
    required final bool isActive,
    required final String createdAt,
    final int? productId,
    final int? categoryId,
    final ProductType? productType,
    final int priority,
    final String? updatedAt,
  }) = _$DiscountImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  DiscountType get discountType;
  @override
  String get value;
  @override
  DiscountScope get scope;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  bool get isActive;
  @override
  String get createdAt;
  @override
  int? get productId;
  @override
  int? get categoryId;
  @override
  ProductType? get productType;
  @override
  int get priority;
  @override
  String? get updatedAt;

  /// Create a copy of Discount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountImplCopyWith<_$DiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

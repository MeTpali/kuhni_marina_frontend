// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DiscountCreateRequest {
  String get name => throw _privateConstructorUsedError;
  DiscountType get discountType => throw _privateConstructorUsedError;
  num get value => throw _privateConstructorUsedError;
  DiscountScope get scope => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  ProductType? get productType => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCreateRequestCopyWith<DiscountCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCreateRequestCopyWith<$Res> {
  factory $DiscountCreateRequestCopyWith(
    DiscountCreateRequest value,
    $Res Function(DiscountCreateRequest) then,
  ) = _$DiscountCreateRequestCopyWithImpl<$Res, DiscountCreateRequest>;
  @useResult
  $Res call({
    String name,
    DiscountType discountType,
    num value,
    DiscountScope scope,
    String startDate,
    String endDate,
    int? productId,
    int? categoryId,
    ProductType? productType,
    int priority,
    bool isActive,
  });
}

/// @nodoc
class _$DiscountCreateRequestCopyWithImpl<
  $Res,
  $Val extends DiscountCreateRequest
>
    implements $DiscountCreateRequestCopyWith<$Res> {
  _$DiscountCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? discountType = null,
    Object? value = null,
    Object? scope = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? productType = freezed,
    Object? priority = null,
    Object? isActive = null,
  }) {
    return _then(
      _value.copyWith(
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
                      as num,
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
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DiscountCreateRequestImplCopyWith<$Res>
    implements $DiscountCreateRequestCopyWith<$Res> {
  factory _$$DiscountCreateRequestImplCopyWith(
    _$DiscountCreateRequestImpl value,
    $Res Function(_$DiscountCreateRequestImpl) then,
  ) = __$$DiscountCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    DiscountType discountType,
    num value,
    DiscountScope scope,
    String startDate,
    String endDate,
    int? productId,
    int? categoryId,
    ProductType? productType,
    int priority,
    bool isActive,
  });
}

/// @nodoc
class __$$DiscountCreateRequestImplCopyWithImpl<$Res>
    extends
        _$DiscountCreateRequestCopyWithImpl<$Res, _$DiscountCreateRequestImpl>
    implements _$$DiscountCreateRequestImplCopyWith<$Res> {
  __$$DiscountCreateRequestImplCopyWithImpl(
    _$DiscountCreateRequestImpl _value,
    $Res Function(_$DiscountCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? discountType = null,
    Object? value = null,
    Object? scope = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? productId = freezed,
    Object? categoryId = freezed,
    Object? productType = freezed,
    Object? priority = null,
    Object? isActive = null,
  }) {
    return _then(
      _$DiscountCreateRequestImpl(
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
                  as num,
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
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$DiscountCreateRequestImpl implements _DiscountCreateRequest {
  const _$DiscountCreateRequestImpl({
    required this.name,
    required this.discountType,
    required this.value,
    required this.scope,
    required this.startDate,
    required this.endDate,
    this.productId,
    this.categoryId,
    this.productType,
    this.priority = 0,
    this.isActive = true,
  });

  @override
  final String name;
  @override
  final DiscountType discountType;
  @override
  final num value;
  @override
  final DiscountScope scope;
  @override
  final String startDate;
  @override
  final String endDate;
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
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'DiscountCreateRequest(name: $name, discountType: $discountType, value: $value, scope: $scope, startDate: $startDate, endDate: $endDate, productId: $productId, categoryId: $categoryId, productType: $productType, priority: $priority, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCreateRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    discountType,
    value,
    scope,
    startDate,
    endDate,
    productId,
    categoryId,
    productType,
    priority,
    isActive,
  );

  /// Create a copy of DiscountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCreateRequestImplCopyWith<_$DiscountCreateRequestImpl>
  get copyWith =>
      __$$DiscountCreateRequestImplCopyWithImpl<_$DiscountCreateRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _DiscountCreateRequest implements DiscountCreateRequest {
  const factory _DiscountCreateRequest({
    required final String name,
    required final DiscountType discountType,
    required final num value,
    required final DiscountScope scope,
    required final String startDate,
    required final String endDate,
    final int? productId,
    final int? categoryId,
    final ProductType? productType,
    final int priority,
    final bool isActive,
  }) = _$DiscountCreateRequestImpl;

  @override
  String get name;
  @override
  DiscountType get discountType;
  @override
  num get value;
  @override
  DiscountScope get scope;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  int? get productId;
  @override
  int? get categoryId;
  @override
  ProductType? get productType;
  @override
  int get priority;
  @override
  bool get isActive;

  /// Create a copy of DiscountCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCreateRequestImplCopyWith<_$DiscountCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

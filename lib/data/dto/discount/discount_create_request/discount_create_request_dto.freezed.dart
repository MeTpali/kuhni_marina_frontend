// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiscountCreateRequestDto _$DiscountCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _DiscountCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$DiscountCreateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  DiscountTypeDto get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  num get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  DiscountScopeDto get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type')
  ProductTypeDto? get productType => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this DiscountCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountCreateRequestDtoCopyWith<DiscountCreateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountCreateRequestDtoCopyWith<$Res> {
  factory $DiscountCreateRequestDtoCopyWith(
    DiscountCreateRequestDto value,
    $Res Function(DiscountCreateRequestDto) then,
  ) = _$DiscountCreateRequestDtoCopyWithImpl<$Res, DiscountCreateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'discount_type') DiscountTypeDto discountType,
    @JsonKey(name: 'value') num value,
    @JsonKey(name: 'scope') DiscountScopeDto scope,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class _$DiscountCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends DiscountCreateRequestDto
>
    implements $DiscountCreateRequestDtoCopyWith<$Res> {
  _$DiscountCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountCreateRequestDto
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
                      as DiscountTypeDto,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as num,
            scope: null == scope
                ? _value.scope
                : scope // ignore: cast_nullable_to_non_nullable
                      as DiscountScopeDto,
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
                      as ProductTypeDto?,
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
abstract class _$$DiscountCreateRequestDtoImplCopyWith<$Res>
    implements $DiscountCreateRequestDtoCopyWith<$Res> {
  factory _$$DiscountCreateRequestDtoImplCopyWith(
    _$DiscountCreateRequestDtoImpl value,
    $Res Function(_$DiscountCreateRequestDtoImpl) then,
  ) = __$$DiscountCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'discount_type') DiscountTypeDto discountType,
    @JsonKey(name: 'value') num value,
    @JsonKey(name: 'scope') DiscountScopeDto scope,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class __$$DiscountCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$DiscountCreateRequestDtoCopyWithImpl<
          $Res,
          _$DiscountCreateRequestDtoImpl
        >
    implements _$$DiscountCreateRequestDtoImplCopyWith<$Res> {
  __$$DiscountCreateRequestDtoImplCopyWithImpl(
    _$DiscountCreateRequestDtoImpl _value,
    $Res Function(_$DiscountCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountCreateRequestDto
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
      _$DiscountCreateRequestDtoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        discountType: null == discountType
            ? _value.discountType
            : discountType // ignore: cast_nullable_to_non_nullable
                  as DiscountTypeDto,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as num,
        scope: null == scope
            ? _value.scope
            : scope // ignore: cast_nullable_to_non_nullable
                  as DiscountScopeDto,
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
                  as ProductTypeDto?,
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
@JsonSerializable()
class _$DiscountCreateRequestDtoImpl implements _DiscountCreateRequestDto {
  const _$DiscountCreateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'discount_type') required this.discountType,
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'scope') required this.scope,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'category_id') this.categoryId,
    @JsonKey(name: 'product_type') this.productType,
    @JsonKey(name: 'priority') this.priority = 0,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$DiscountCreateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountCreateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'discount_type')
  final DiscountTypeDto discountType;
  @override
  @JsonKey(name: 'value')
  final num value;
  @override
  @JsonKey(name: 'scope')
  final DiscountScopeDto scope;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'product_type')
  final ProductTypeDto? productType;
  @override
  @JsonKey(name: 'priority')
  final int priority;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;

  @override
  String toString() {
    return 'DiscountCreateRequestDto(name: $name, discountType: $discountType, value: $value, scope: $scope, startDate: $startDate, endDate: $endDate, productId: $productId, categoryId: $categoryId, productType: $productType, priority: $priority, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountCreateRequestDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DiscountCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountCreateRequestDtoImplCopyWith<_$DiscountCreateRequestDtoImpl>
  get copyWith =>
      __$$DiscountCreateRequestDtoImplCopyWithImpl<
        _$DiscountCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountCreateRequestDtoImplToJson(this);
  }
}

abstract class _DiscountCreateRequestDto implements DiscountCreateRequestDto {
  const factory _DiscountCreateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'discount_type') required final DiscountTypeDto discountType,
    @JsonKey(name: 'value') required final num value,
    @JsonKey(name: 'scope') required final DiscountScopeDto scope,
    @JsonKey(name: 'start_date') required final String startDate,
    @JsonKey(name: 'end_date') required final String endDate,
    @JsonKey(name: 'product_id') final int? productId,
    @JsonKey(name: 'category_id') final int? categoryId,
    @JsonKey(name: 'product_type') final ProductTypeDto? productType,
    @JsonKey(name: 'priority') final int priority,
    @JsonKey(name: 'is_active') final bool isActive,
  }) = _$DiscountCreateRequestDtoImpl;

  factory _DiscountCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$DiscountCreateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'discount_type')
  DiscountTypeDto get discountType;
  @override
  @JsonKey(name: 'value')
  num get value;
  @override
  @JsonKey(name: 'scope')
  DiscountScopeDto get scope;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'product_type')
  ProductTypeDto? get productType;
  @override
  @JsonKey(name: 'priority')
  int get priority;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of DiscountCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountCreateRequestDtoImplCopyWith<_$DiscountCreateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

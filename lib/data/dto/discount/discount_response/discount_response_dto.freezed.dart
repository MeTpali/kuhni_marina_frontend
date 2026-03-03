// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiscountResponseDto _$DiscountResponseDtoFromJson(Map<String, dynamic> json) {
  return _DiscountResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DiscountResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  DiscountTypeDto get discountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  DiscountScopeDto get scope => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type')
  ProductTypeDto? get productType => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DiscountResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountResponseDtoCopyWith<DiscountResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountResponseDtoCopyWith<$Res> {
  factory $DiscountResponseDtoCopyWith(
    DiscountResponseDto value,
    $Res Function(DiscountResponseDto) then,
  ) = _$DiscountResponseDtoCopyWithImpl<$Res, DiscountResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'discount_type') DiscountTypeDto discountType,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'scope') DiscountScopeDto scope,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$DiscountResponseDtoCopyWithImpl<$Res, $Val extends DiscountResponseDto>
    implements $DiscountResponseDtoCopyWith<$Res> {
  _$DiscountResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountResponseDto
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
    Object? message = freezed,
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
                      as DiscountTypeDto,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
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
                      as ProductTypeDto?,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$DiscountResponseDtoImplCopyWith<$Res>
    implements $DiscountResponseDtoCopyWith<$Res> {
  factory _$$DiscountResponseDtoImplCopyWith(
    _$DiscountResponseDtoImpl value,
    $Res Function(_$DiscountResponseDtoImpl) then,
  ) = __$$DiscountResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'discount_type') DiscountTypeDto discountType,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'scope') DiscountScopeDto scope,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'product_type') ProductTypeDto? productType,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$DiscountResponseDtoImplCopyWithImpl<$Res>
    extends _$DiscountResponseDtoCopyWithImpl<$Res, _$DiscountResponseDtoImpl>
    implements _$$DiscountResponseDtoImplCopyWith<$Res> {
  __$$DiscountResponseDtoImplCopyWithImpl(
    _$DiscountResponseDtoImpl _value,
    $Res Function(_$DiscountResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountResponseDto
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
    Object? message = freezed,
  }) {
    return _then(
      _$DiscountResponseDtoImpl(
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
                  as DiscountTypeDto,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
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
                  as ProductTypeDto?,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$DiscountResponseDtoImpl implements _DiscountResponseDto {
  const _$DiscountResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'discount_type') required this.discountType,
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'scope') required this.scope,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'is_active') required this.isActive,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'product_id') this.productId,
    @JsonKey(name: 'category_id') this.categoryId,
    @JsonKey(name: 'product_type') this.productType,
    @JsonKey(name: 'priority') this.priority = 0,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'message') this.message,
  });

  factory _$DiscountResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'discount_type')
  final DiscountTypeDto discountType;
  @override
  @JsonKey(name: 'value')
  final String value;
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
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
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
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'DiscountResponseDto(id: $id, name: $name, discountType: $discountType, value: $value, scope: $scope, startDate: $startDate, endDate: $endDate, isActive: $isActive, createdAt: $createdAt, productId: $productId, categoryId: $categoryId, productType: $productType, priority: $priority, updatedAt: $updatedAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountResponseDtoImpl &&
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
                other.updatedAt == updatedAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    message,
  );

  /// Create a copy of DiscountResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountResponseDtoImplCopyWith<_$DiscountResponseDtoImpl> get copyWith =>
      __$$DiscountResponseDtoImplCopyWithImpl<_$DiscountResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountResponseDtoImplToJson(this);
  }
}

abstract class _DiscountResponseDto implements DiscountResponseDto {
  const factory _DiscountResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'discount_type') required final DiscountTypeDto discountType,
    @JsonKey(name: 'value') required final String value,
    @JsonKey(name: 'scope') required final DiscountScopeDto scope,
    @JsonKey(name: 'start_date') required final String startDate,
    @JsonKey(name: 'end_date') required final String endDate,
    @JsonKey(name: 'is_active') required final bool isActive,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'product_id') final int? productId,
    @JsonKey(name: 'category_id') final int? categoryId,
    @JsonKey(name: 'product_type') final ProductTypeDto? productType,
    @JsonKey(name: 'priority') final int priority,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$DiscountResponseDtoImpl;

  factory _DiscountResponseDto.fromJson(Map<String, dynamic> json) =
      _$DiscountResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'discount_type')
  DiscountTypeDto get discountType;
  @override
  @JsonKey(name: 'value')
  String get value;
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
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
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
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of DiscountResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountResponseDtoImplCopyWith<_$DiscountResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

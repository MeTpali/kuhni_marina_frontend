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
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_name')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_unit')
  String? get attributeUnit => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'attribute_unit') String? attributeUnit,
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
abstract class _$$ProductAttributeResponseDtoImplCopyWith<$Res>
    implements $ProductAttributeResponseDtoCopyWith<$Res> {
  factory _$$ProductAttributeResponseDtoImplCopyWith(
    _$ProductAttributeResponseDtoImpl value,
    $Res Function(_$ProductAttributeResponseDtoImpl) then,
  ) = __$$ProductAttributeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'attribute_unit') String? attributeUnit,
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
    Object? attributeId = null,
    Object? attributeName = null,
    Object? value = null,
    Object? attributeUnit = freezed,
  }) {
    return _then(
      _$ProductAttributeResponseDtoImpl(
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
@JsonSerializable()
class _$ProductAttributeResponseDtoImpl
    implements _ProductAttributeResponseDto {
  const _$ProductAttributeResponseDtoImpl({
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'attribute_name') required this.attributeName,
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'attribute_unit') this.attributeUnit,
  });

  factory _$ProductAttributeResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductAttributeResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  final String attributeName;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'attribute_unit')
  final String? attributeUnit;

  @override
  String toString() {
    return 'ProductAttributeResponseDto(attributeId: $attributeId, attributeName: $attributeName, value: $value, attributeUnit: $attributeUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeResponseDtoImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.attributeUnit, attributeUnit) ||
                other.attributeUnit == attributeUnit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    attributeId,
    attributeName,
    value,
    attributeUnit,
  );

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
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'attribute_name') required final String attributeName,
    @JsonKey(name: 'value') required final String value,
    @JsonKey(name: 'attribute_unit') final String? attributeUnit,
  }) = _$ProductAttributeResponseDtoImpl;

  factory _ProductAttributeResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  String get attributeName;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'attribute_unit')
  String? get attributeUnit;

  /// Create a copy of ProductAttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeResponseDtoImplCopyWith<_$ProductAttributeResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

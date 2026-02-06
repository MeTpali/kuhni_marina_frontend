// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeResponse _$ProductAttributeResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeResponse {
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_name')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_unit')
  String? get attributeUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeResponseCopyWith<ProductAttributeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeResponseCopyWith<$Res> {
  factory $ProductAttributeResponseCopyWith(
    ProductAttributeResponse value,
    $Res Function(ProductAttributeResponse) then,
  ) = _$ProductAttributeResponseCopyWithImpl<$Res, ProductAttributeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'attribute_unit') String? attributeUnit,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class _$ProductAttributeResponseCopyWithImpl<
  $Res,
  $Val extends ProductAttributeResponse
>
    implements $ProductAttributeResponseCopyWith<$Res> {
  _$ProductAttributeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? attributeUnit = freezed,
    Object? value = null,
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
            attributeUnit: freezed == attributeUnit
                ? _value.attributeUnit
                : attributeUnit // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ProductAttributeResponseImplCopyWith<$Res>
    implements $ProductAttributeResponseCopyWith<$Res> {
  factory _$$ProductAttributeResponseImplCopyWith(
    _$ProductAttributeResponseImpl value,
    $Res Function(_$ProductAttributeResponseImpl) then,
  ) = __$$ProductAttributeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'attribute_unit') String? attributeUnit,
    @JsonKey(name: 'value') String value,
  });
}

/// @nodoc
class __$$ProductAttributeResponseImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeResponseCopyWithImpl<
          $Res,
          _$ProductAttributeResponseImpl
        >
    implements _$$ProductAttributeResponseImplCopyWith<$Res> {
  __$$ProductAttributeResponseImplCopyWithImpl(
    _$ProductAttributeResponseImpl _value,
    $Res Function(_$ProductAttributeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? attributeUnit = freezed,
    Object? value = null,
  }) {
    return _then(
      _$ProductAttributeResponseImpl(
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
                  as int,
        attributeName: null == attributeName
            ? _value.attributeName
            : attributeName // ignore: cast_nullable_to_non_nullable
                  as String,
        attributeUnit: freezed == attributeUnit
            ? _value.attributeUnit
            : attributeUnit // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAttributeResponseImpl implements _ProductAttributeResponse {
  const _$ProductAttributeResponseImpl({
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'attribute_name') required this.attributeName,
    @JsonKey(name: 'attribute_unit') this.attributeUnit,
    @JsonKey(name: 'value') required this.value,
  });

  factory _$ProductAttributeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAttributeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  final String attributeName;
  @override
  @JsonKey(name: 'attribute_unit')
  final String? attributeUnit;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ProductAttributeResponse(attributeId: $attributeId, attributeName: $attributeName, attributeUnit: $attributeUnit, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeResponseImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.attributeUnit, attributeUnit) ||
                other.attributeUnit == attributeUnit) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    attributeId,
    attributeName,
    attributeUnit,
    value,
  );

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeResponseImplCopyWith<_$ProductAttributeResponseImpl>
  get copyWith =>
      __$$ProductAttributeResponseImplCopyWithImpl<
        _$ProductAttributeResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeResponseImplToJson(this);
  }
}

abstract class _ProductAttributeResponse implements ProductAttributeResponse {
  const factory _ProductAttributeResponse({
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'attribute_name') required final String attributeName,
    @JsonKey(name: 'attribute_unit') final String? attributeUnit,
    @JsonKey(name: 'value') required final String value,
  }) = _$ProductAttributeResponseImpl;

  factory _ProductAttributeResponse.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  String get attributeName;
  @override
  @JsonKey(name: 'attribute_unit')
  String? get attributeUnit;
  @override
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of ProductAttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeResponseImplCopyWith<_$ProductAttributeResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

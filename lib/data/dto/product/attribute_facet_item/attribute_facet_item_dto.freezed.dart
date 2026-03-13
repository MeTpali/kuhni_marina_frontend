// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_facet_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeFacetItemDto _$AttributeFacetItemDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeFacetItemDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeFacetItemDto {
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attribute_name')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'values')
  List<AttributeFacetValueDto> get values => throw _privateConstructorUsedError;

  /// Serializes this AttributeFacetItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeFacetItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeFacetItemDtoCopyWith<AttributeFacetItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeFacetItemDtoCopyWith<$Res> {
  factory $AttributeFacetItemDtoCopyWith(
    AttributeFacetItemDto value,
    $Res Function(AttributeFacetItemDto) then,
  ) = _$AttributeFacetItemDtoCopyWithImpl<$Res, AttributeFacetItemDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'values') List<AttributeFacetValueDto> values,
  });
}

/// @nodoc
class _$AttributeFacetItemDtoCopyWithImpl<
  $Res,
  $Val extends AttributeFacetItemDto
>
    implements $AttributeFacetItemDtoCopyWith<$Res> {
  _$AttributeFacetItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeFacetItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? unit = freezed,
    Object? values = null,
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
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String?,
            values: null == values
                ? _value.values
                : values // ignore: cast_nullable_to_non_nullable
                      as List<AttributeFacetValueDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeFacetItemDtoImplCopyWith<$Res>
    implements $AttributeFacetItemDtoCopyWith<$Res> {
  factory _$$AttributeFacetItemDtoImplCopyWith(
    _$AttributeFacetItemDtoImpl value,
    $Res Function(_$AttributeFacetItemDtoImpl) then,
  ) = __$$AttributeFacetItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'attribute_name') String attributeName,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'values') List<AttributeFacetValueDto> values,
  });
}

/// @nodoc
class __$$AttributeFacetItemDtoImplCopyWithImpl<$Res>
    extends
        _$AttributeFacetItemDtoCopyWithImpl<$Res, _$AttributeFacetItemDtoImpl>
    implements _$$AttributeFacetItemDtoImplCopyWith<$Res> {
  __$$AttributeFacetItemDtoImplCopyWithImpl(
    _$AttributeFacetItemDtoImpl _value,
    $Res Function(_$AttributeFacetItemDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeFacetItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeId = null,
    Object? attributeName = null,
    Object? unit = freezed,
    Object? values = null,
  }) {
    return _then(
      _$AttributeFacetItemDtoImpl(
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
                  as int,
        attributeName: null == attributeName
            ? _value.attributeName
            : attributeName // ignore: cast_nullable_to_non_nullable
                  as String,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String?,
        values: null == values
            ? _value._values
            : values // ignore: cast_nullable_to_non_nullable
                  as List<AttributeFacetValueDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeFacetItemDtoImpl implements _AttributeFacetItemDto {
  const _$AttributeFacetItemDtoImpl({
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'attribute_name') required this.attributeName,
    @JsonKey(name: 'unit') this.unit,
    @JsonKey(name: 'values')
    final List<AttributeFacetValueDto> values = const [],
  }) : _values = values;

  factory _$AttributeFacetItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeFacetItemDtoImplFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  final String attributeName;
  @override
  @JsonKey(name: 'unit')
  final String? unit;
  final List<AttributeFacetValueDto> _values;
  @override
  @JsonKey(name: 'values')
  List<AttributeFacetValueDto> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'AttributeFacetItemDto(attributeId: $attributeId, attributeName: $attributeName, unit: $unit, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeFacetItemDtoImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    attributeId,
    attributeName,
    unit,
    const DeepCollectionEquality().hash(_values),
  );

  /// Create a copy of AttributeFacetItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeFacetItemDtoImplCopyWith<_$AttributeFacetItemDtoImpl>
  get copyWith =>
      __$$AttributeFacetItemDtoImplCopyWithImpl<_$AttributeFacetItemDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeFacetItemDtoImplToJson(this);
  }
}

abstract class _AttributeFacetItemDto implements AttributeFacetItemDto {
  const factory _AttributeFacetItemDto({
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'attribute_name') required final String attributeName,
    @JsonKey(name: 'unit') final String? unit,
    @JsonKey(name: 'values') final List<AttributeFacetValueDto> values,
  }) = _$AttributeFacetItemDtoImpl;

  factory _AttributeFacetItemDto.fromJson(Map<String, dynamic> json) =
      _$AttributeFacetItemDtoImpl.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'attribute_name')
  String get attributeName;
  @override
  @JsonKey(name: 'unit')
  String? get unit;
  @override
  @JsonKey(name: 'values')
  List<AttributeFacetValueDto> get values;

  /// Create a copy of AttributeFacetItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeFacetItemDtoImplCopyWith<_$AttributeFacetItemDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

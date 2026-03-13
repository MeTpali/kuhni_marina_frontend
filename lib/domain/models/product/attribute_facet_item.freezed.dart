// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_facet_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttributeFacetItem {
  int get attributeId => throw _privateConstructorUsedError;
  String get attributeName => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  List<AttributeFacetValue> get values => throw _privateConstructorUsedError;

  /// Create a copy of AttributeFacetItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeFacetItemCopyWith<AttributeFacetItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeFacetItemCopyWith<$Res> {
  factory $AttributeFacetItemCopyWith(
    AttributeFacetItem value,
    $Res Function(AttributeFacetItem) then,
  ) = _$AttributeFacetItemCopyWithImpl<$Res, AttributeFacetItem>;
  @useResult
  $Res call({
    int attributeId,
    String attributeName,
    String? unit,
    List<AttributeFacetValue> values,
  });
}

/// @nodoc
class _$AttributeFacetItemCopyWithImpl<$Res, $Val extends AttributeFacetItem>
    implements $AttributeFacetItemCopyWith<$Res> {
  _$AttributeFacetItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeFacetItem
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
                      as List<AttributeFacetValue>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeFacetItemImplCopyWith<$Res>
    implements $AttributeFacetItemCopyWith<$Res> {
  factory _$$AttributeFacetItemImplCopyWith(
    _$AttributeFacetItemImpl value,
    $Res Function(_$AttributeFacetItemImpl) then,
  ) = __$$AttributeFacetItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int attributeId,
    String attributeName,
    String? unit,
    List<AttributeFacetValue> values,
  });
}

/// @nodoc
class __$$AttributeFacetItemImplCopyWithImpl<$Res>
    extends _$AttributeFacetItemCopyWithImpl<$Res, _$AttributeFacetItemImpl>
    implements _$$AttributeFacetItemImplCopyWith<$Res> {
  __$$AttributeFacetItemImplCopyWithImpl(
    _$AttributeFacetItemImpl _value,
    $Res Function(_$AttributeFacetItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeFacetItem
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
      _$AttributeFacetItemImpl(
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
                  as List<AttributeFacetValue>,
      ),
    );
  }
}

/// @nodoc

class _$AttributeFacetItemImpl implements _AttributeFacetItem {
  const _$AttributeFacetItemImpl({
    required this.attributeId,
    required this.attributeName,
    this.unit,
    final List<AttributeFacetValue> values = const [],
  }) : _values = values;

  @override
  final int attributeId;
  @override
  final String attributeName;
  @override
  final String? unit;
  final List<AttributeFacetValue> _values;
  @override
  @JsonKey()
  List<AttributeFacetValue> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'AttributeFacetItem(attributeId: $attributeId, attributeName: $attributeName, unit: $unit, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeFacetItemImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    attributeId,
    attributeName,
    unit,
    const DeepCollectionEquality().hash(_values),
  );

  /// Create a copy of AttributeFacetItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeFacetItemImplCopyWith<_$AttributeFacetItemImpl> get copyWith =>
      __$$AttributeFacetItemImplCopyWithImpl<_$AttributeFacetItemImpl>(
        this,
        _$identity,
      );
}

abstract class _AttributeFacetItem implements AttributeFacetItem {
  const factory _AttributeFacetItem({
    required final int attributeId,
    required final String attributeName,
    final String? unit,
    final List<AttributeFacetValue> values,
  }) = _$AttributeFacetItemImpl;

  @override
  int get attributeId;
  @override
  String get attributeName;
  @override
  String? get unit;
  @override
  List<AttributeFacetValue> get values;

  /// Create a copy of AttributeFacetItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeFacetItemImplCopyWith<_$AttributeFacetItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

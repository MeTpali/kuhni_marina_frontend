// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_facet_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttributeFacetValue {
  String get value => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of AttributeFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeFacetValueCopyWith<AttributeFacetValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeFacetValueCopyWith<$Res> {
  factory $AttributeFacetValueCopyWith(
    AttributeFacetValue value,
    $Res Function(AttributeFacetValue) then,
  ) = _$AttributeFacetValueCopyWithImpl<$Res, AttributeFacetValue>;
  @useResult
  $Res call({String value, int count});
}

/// @nodoc
class _$AttributeFacetValueCopyWithImpl<$Res, $Val extends AttributeFacetValue>
    implements $AttributeFacetValueCopyWith<$Res> {
  _$AttributeFacetValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeFacetValueImplCopyWith<$Res>
    implements $AttributeFacetValueCopyWith<$Res> {
  factory _$$AttributeFacetValueImplCopyWith(
    _$AttributeFacetValueImpl value,
    $Res Function(_$AttributeFacetValueImpl) then,
  ) = __$$AttributeFacetValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, int count});
}

/// @nodoc
class __$$AttributeFacetValueImplCopyWithImpl<$Res>
    extends _$AttributeFacetValueCopyWithImpl<$Res, _$AttributeFacetValueImpl>
    implements _$$AttributeFacetValueImplCopyWith<$Res> {
  __$$AttributeFacetValueImplCopyWithImpl(
    _$AttributeFacetValueImpl _value,
    $Res Function(_$AttributeFacetValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? count = null}) {
    return _then(
      _$AttributeFacetValueImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AttributeFacetValueImpl implements _AttributeFacetValue {
  const _$AttributeFacetValueImpl({required this.value, required this.count});

  @override
  final String value;
  @override
  final int count;

  @override
  String toString() {
    return 'AttributeFacetValue(value: $value, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeFacetValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, count);

  /// Create a copy of AttributeFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeFacetValueImplCopyWith<_$AttributeFacetValueImpl> get copyWith =>
      __$$AttributeFacetValueImplCopyWithImpl<_$AttributeFacetValueImpl>(
        this,
        _$identity,
      );
}

abstract class _AttributeFacetValue implements AttributeFacetValue {
  const factory _AttributeFacetValue({
    required final String value,
    required final int count,
  }) = _$AttributeFacetValueImpl;

  @override
  String get value;
  @override
  int get count;

  /// Create a copy of AttributeFacetValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeFacetValueImplCopyWith<_$AttributeFacetValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

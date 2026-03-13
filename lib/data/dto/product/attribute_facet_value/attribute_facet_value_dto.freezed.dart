// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_facet_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeFacetValueDto _$AttributeFacetValueDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeFacetValueDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeFacetValueDto {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;

  /// Serializes this AttributeFacetValueDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeFacetValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeFacetValueDtoCopyWith<AttributeFacetValueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeFacetValueDtoCopyWith<$Res> {
  factory $AttributeFacetValueDtoCopyWith(
    AttributeFacetValueDto value,
    $Res Function(AttributeFacetValueDto) then,
  ) = _$AttributeFacetValueDtoCopyWithImpl<$Res, AttributeFacetValueDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'count') int count,
  });
}

/// @nodoc
class _$AttributeFacetValueDtoCopyWithImpl<
  $Res,
  $Val extends AttributeFacetValueDto
>
    implements $AttributeFacetValueDtoCopyWith<$Res> {
  _$AttributeFacetValueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeFacetValueDto
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
abstract class _$$AttributeFacetValueDtoImplCopyWith<$Res>
    implements $AttributeFacetValueDtoCopyWith<$Res> {
  factory _$$AttributeFacetValueDtoImplCopyWith(
    _$AttributeFacetValueDtoImpl value,
    $Res Function(_$AttributeFacetValueDtoImpl) then,
  ) = __$$AttributeFacetValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'value') String value,
    @JsonKey(name: 'count') int count,
  });
}

/// @nodoc
class __$$AttributeFacetValueDtoImplCopyWithImpl<$Res>
    extends
        _$AttributeFacetValueDtoCopyWithImpl<$Res, _$AttributeFacetValueDtoImpl>
    implements _$$AttributeFacetValueDtoImplCopyWith<$Res> {
  __$$AttributeFacetValueDtoImplCopyWithImpl(
    _$AttributeFacetValueDtoImpl _value,
    $Res Function(_$AttributeFacetValueDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeFacetValueDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? count = null}) {
    return _then(
      _$AttributeFacetValueDtoImpl(
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
@JsonSerializable()
class _$AttributeFacetValueDtoImpl implements _AttributeFacetValueDto {
  const _$AttributeFacetValueDtoImpl({
    @JsonKey(name: 'value') required this.value,
    @JsonKey(name: 'count') required this.count,
  });

  factory _$AttributeFacetValueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeFacetValueDtoImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'count')
  final int count;

  @override
  String toString() {
    return 'AttributeFacetValueDto(value: $value, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeFacetValueDtoImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, count);

  /// Create a copy of AttributeFacetValueDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeFacetValueDtoImplCopyWith<_$AttributeFacetValueDtoImpl>
  get copyWith =>
      __$$AttributeFacetValueDtoImplCopyWithImpl<_$AttributeFacetValueDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeFacetValueDtoImplToJson(this);
  }
}

abstract class _AttributeFacetValueDto implements AttributeFacetValueDto {
  const factory _AttributeFacetValueDto({
    @JsonKey(name: 'value') required final String value,
    @JsonKey(name: 'count') required final int count,
  }) = _$AttributeFacetValueDtoImpl;

  factory _AttributeFacetValueDto.fromJson(Map<String, dynamic> json) =
      _$AttributeFacetValueDtoImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'count')
  int get count;

  /// Create a copy of AttributeFacetValueDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeFacetValueDtoImplCopyWith<_$AttributeFacetValueDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

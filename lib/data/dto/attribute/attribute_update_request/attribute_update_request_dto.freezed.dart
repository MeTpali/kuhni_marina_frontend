// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeUpdateRequestDto _$AttributeUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeUpdateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;

  /// Serializes this AttributeUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeUpdateRequestDtoCopyWith<AttributeUpdateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeUpdateRequestDtoCopyWith<$Res> {
  factory $AttributeUpdateRequestDtoCopyWith(
    AttributeUpdateRequestDto value,
    $Res Function(AttributeUpdateRequestDto) then,
  ) = _$AttributeUpdateRequestDtoCopyWithImpl<$Res, AttributeUpdateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
  });
}

/// @nodoc
class _$AttributeUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends AttributeUpdateRequestDto
>
    implements $AttributeUpdateRequestDtoCopyWith<$Res> {
  _$AttributeUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? unit = freezed}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeUpdateRequestDtoImplCopyWith<$Res>
    implements $AttributeUpdateRequestDtoCopyWith<$Res> {
  factory _$$AttributeUpdateRequestDtoImplCopyWith(
    _$AttributeUpdateRequestDtoImpl value,
    $Res Function(_$AttributeUpdateRequestDtoImpl) then,
  ) = __$$AttributeUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
  });
}

/// @nodoc
class __$$AttributeUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$AttributeUpdateRequestDtoCopyWithImpl<
          $Res,
          _$AttributeUpdateRequestDtoImpl
        >
    implements _$$AttributeUpdateRequestDtoImplCopyWith<$Res> {
  __$$AttributeUpdateRequestDtoImplCopyWithImpl(
    _$AttributeUpdateRequestDtoImpl _value,
    $Res Function(_$AttributeUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? unit = freezed}) {
    return _then(
      _$AttributeUpdateRequestDtoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeUpdateRequestDtoImpl implements _AttributeUpdateRequestDto {
  const _$AttributeUpdateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'unit') this.unit,
  });

  factory _$AttributeUpdateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'unit')
  final String? unit;

  @override
  String toString() {
    return 'AttributeUpdateRequestDto(name: $name, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeUpdateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, unit);

  /// Create a copy of AttributeUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeUpdateRequestDtoImplCopyWith<_$AttributeUpdateRequestDtoImpl>
  get copyWith =>
      __$$AttributeUpdateRequestDtoImplCopyWithImpl<
        _$AttributeUpdateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeUpdateRequestDtoImplToJson(this);
  }
}

abstract class _AttributeUpdateRequestDto implements AttributeUpdateRequestDto {
  const factory _AttributeUpdateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'unit') final String? unit,
  }) = _$AttributeUpdateRequestDtoImpl;

  factory _AttributeUpdateRequestDto.fromJson(Map<String, dynamic> json) =
      _$AttributeUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'unit')
  String? get unit;

  /// Create a copy of AttributeUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeUpdateRequestDtoImplCopyWith<_$AttributeUpdateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

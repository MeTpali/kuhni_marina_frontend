// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeResponseDto _$AttributeResponseDtoFromJson(Map<String, dynamic> json) {
  return _AttributeResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeResponseDtoCopyWith<AttributeResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeResponseDtoCopyWith<$Res> {
  factory $AttributeResponseDtoCopyWith(
    AttributeResponseDto value,
    $Res Function(AttributeResponseDto) then,
  ) = _$AttributeResponseDtoCopyWithImpl<$Res, AttributeResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeResponseDtoCopyWithImpl<
  $Res,
  $Val extends AttributeResponseDto
>
    implements $AttributeResponseDtoCopyWith<$Res> {
  _$AttributeResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = freezed,
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
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AttributeResponseDtoImplCopyWith<$Res>
    implements $AttributeResponseDtoCopyWith<$Res> {
  factory _$$AttributeResponseDtoImplCopyWith(
    _$AttributeResponseDtoImpl value,
    $Res Function(_$AttributeResponseDtoImpl) then,
  ) = __$$AttributeResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeResponseDtoImplCopyWithImpl<$Res>
    extends _$AttributeResponseDtoCopyWithImpl<$Res, _$AttributeResponseDtoImpl>
    implements _$$AttributeResponseDtoImplCopyWith<$Res> {
  __$$AttributeResponseDtoImplCopyWithImpl(
    _$AttributeResponseDtoImpl _value,
    $Res Function(_$AttributeResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$AttributeResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
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
class _$AttributeResponseDtoImpl implements _AttributeResponseDto {
  const _$AttributeResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'unit') this.unit,
    @JsonKey(name: 'message') this.message,
  });

  factory _$AttributeResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'unit')
  final String? unit;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeResponseDto(id: $id, name: $name, unit: $unit, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, unit, message);

  /// Create a copy of AttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeResponseDtoImplCopyWith<_$AttributeResponseDtoImpl>
  get copyWith =>
      __$$AttributeResponseDtoImplCopyWithImpl<_$AttributeResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeResponseDtoImplToJson(this);
  }
}

abstract class _AttributeResponseDto implements AttributeResponseDto {
  const factory _AttributeResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'unit') final String? unit,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeResponseDtoImpl;

  factory _AttributeResponseDto.fromJson(Map<String, dynamic> json) =
      _$AttributeResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'unit')
  String? get unit;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeResponseDtoImplCopyWith<_$AttributeResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

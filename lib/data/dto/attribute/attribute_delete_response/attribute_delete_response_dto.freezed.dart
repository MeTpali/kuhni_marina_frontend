// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeDeleteResponseDto _$AttributeDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeDeleteResponseDto {
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeDeleteResponseDtoCopyWith<AttributeDeleteResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeDeleteResponseDtoCopyWith<$Res> {
  factory $AttributeDeleteResponseDtoCopyWith(
    AttributeDeleteResponseDto value,
    $Res Function(AttributeDeleteResponseDto) then,
  ) =
      _$AttributeDeleteResponseDtoCopyWithImpl<
        $Res,
        AttributeDeleteResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends AttributeDeleteResponseDto
>
    implements $AttributeDeleteResponseDtoCopyWith<$Res> {
  _$AttributeDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributeId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            attributeId: null == attributeId
                ? _value.attributeId
                : attributeId // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$AttributeDeleteResponseDtoImplCopyWith<$Res>
    implements $AttributeDeleteResponseDtoCopyWith<$Res> {
  factory _$$AttributeDeleteResponseDtoImplCopyWith(
    _$AttributeDeleteResponseDtoImpl value,
    $Res Function(_$AttributeDeleteResponseDtoImpl) then,
  ) = __$$AttributeDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$AttributeDeleteResponseDtoCopyWithImpl<
          $Res,
          _$AttributeDeleteResponseDtoImpl
        >
    implements _$$AttributeDeleteResponseDtoImplCopyWith<$Res> {
  __$$AttributeDeleteResponseDtoImplCopyWithImpl(
    _$AttributeDeleteResponseDtoImpl _value,
    $Res Function(_$AttributeDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributeId = null, Object? message = freezed}) {
    return _then(
      _$AttributeDeleteResponseDtoImpl(
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$AttributeDeleteResponseDtoImpl implements _AttributeDeleteResponseDto {
  const _$AttributeDeleteResponseDtoImpl({
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$AttributeDeleteResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AttributeDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeDeleteResponseDto(attributeId: $attributeId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDeleteResponseDtoImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attributeId, message);

  /// Create a copy of AttributeDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeDeleteResponseDtoImplCopyWith<_$AttributeDeleteResponseDtoImpl>
  get copyWith =>
      __$$AttributeDeleteResponseDtoImplCopyWithImpl<
        _$AttributeDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeDeleteResponseDtoImplToJson(this);
  }
}

abstract class _AttributeDeleteResponseDto
    implements AttributeDeleteResponseDto {
  const factory _AttributeDeleteResponseDto({
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeDeleteResponseDtoImpl;

  factory _AttributeDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$AttributeDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeDeleteResponseDtoImplCopyWith<_$AttributeDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

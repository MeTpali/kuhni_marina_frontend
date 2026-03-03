// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiscountDeleteResponseDto _$DiscountDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _DiscountDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DiscountDeleteResponseDto {
  @JsonKey(name: 'discount_id')
  int get discountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DiscountDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountDeleteResponseDtoCopyWith<DiscountDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountDeleteResponseDtoCopyWith<$Res> {
  factory $DiscountDeleteResponseDtoCopyWith(
    DiscountDeleteResponseDto value,
    $Res Function(DiscountDeleteResponseDto) then,
  ) = _$DiscountDeleteResponseDtoCopyWithImpl<$Res, DiscountDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'discount_id') int discountId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$DiscountDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends DiscountDeleteResponseDto
>
    implements $DiscountDeleteResponseDtoCopyWith<$Res> {
  _$DiscountDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? discountId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            discountId: null == discountId
                ? _value.discountId
                : discountId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DiscountDeleteResponseDtoImplCopyWith<$Res>
    implements $DiscountDeleteResponseDtoCopyWith<$Res> {
  factory _$$DiscountDeleteResponseDtoImplCopyWith(
    _$DiscountDeleteResponseDtoImpl value,
    $Res Function(_$DiscountDeleteResponseDtoImpl) then,
  ) = __$$DiscountDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'discount_id') int discountId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$DiscountDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$DiscountDeleteResponseDtoCopyWithImpl<
          $Res,
          _$DiscountDeleteResponseDtoImpl
        >
    implements _$$DiscountDeleteResponseDtoImplCopyWith<$Res> {
  __$$DiscountDeleteResponseDtoImplCopyWithImpl(
    _$DiscountDeleteResponseDtoImpl _value,
    $Res Function(_$DiscountDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? discountId = null, Object? message = freezed}) {
    return _then(
      _$DiscountDeleteResponseDtoImpl(
        discountId: null == discountId
            ? _value.discountId
            : discountId // ignore: cast_nullable_to_non_nullable
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
class _$DiscountDeleteResponseDtoImpl implements _DiscountDeleteResponseDto {
  const _$DiscountDeleteResponseDtoImpl({
    @JsonKey(name: 'discount_id') required this.discountId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$DiscountDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'discount_id')
  final int discountId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'DiscountDeleteResponseDto(discountId: $discountId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountDeleteResponseDtoImpl &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, discountId, message);

  /// Create a copy of DiscountDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountDeleteResponseDtoImplCopyWith<_$DiscountDeleteResponseDtoImpl>
  get copyWith =>
      __$$DiscountDeleteResponseDtoImplCopyWithImpl<
        _$DiscountDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountDeleteResponseDtoImplToJson(this);
  }
}

abstract class _DiscountDeleteResponseDto implements DiscountDeleteResponseDto {
  const factory _DiscountDeleteResponseDto({
    @JsonKey(name: 'discount_id') required final int discountId,
    @JsonKey(name: 'message') final String? message,
  }) = _$DiscountDeleteResponseDtoImpl;

  factory _DiscountDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$DiscountDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'discount_id')
  int get discountId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of DiscountDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountDeleteResponseDtoImplCopyWith<_$DiscountDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

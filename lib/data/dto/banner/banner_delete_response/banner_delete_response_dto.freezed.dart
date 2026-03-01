// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerDeleteResponseDto _$BannerDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _BannerDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$BannerDeleteResponseDto {
  @JsonKey(name: 'banner_id')
  int get bannerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BannerDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerDeleteResponseDtoCopyWith<BannerDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDeleteResponseDtoCopyWith<$Res> {
  factory $BannerDeleteResponseDtoCopyWith(
    BannerDeleteResponseDto value,
    $Res Function(BannerDeleteResponseDto) then,
  ) = _$BannerDeleteResponseDtoCopyWithImpl<$Res, BannerDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'banner_id') int bannerId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$BannerDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends BannerDeleteResponseDto
>
    implements $BannerDeleteResponseDtoCopyWith<$Res> {
  _$BannerDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bannerId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            bannerId: null == bannerId
                ? _value.bannerId
                : bannerId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BannerDeleteResponseDtoImplCopyWith<$Res>
    implements $BannerDeleteResponseDtoCopyWith<$Res> {
  factory _$$BannerDeleteResponseDtoImplCopyWith(
    _$BannerDeleteResponseDtoImpl value,
    $Res Function(_$BannerDeleteResponseDtoImpl) then,
  ) = __$$BannerDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'banner_id') int bannerId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$BannerDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$BannerDeleteResponseDtoCopyWithImpl<
          $Res,
          _$BannerDeleteResponseDtoImpl
        >
    implements _$$BannerDeleteResponseDtoImplCopyWith<$Res> {
  __$$BannerDeleteResponseDtoImplCopyWithImpl(
    _$BannerDeleteResponseDtoImpl _value,
    $Res Function(_$BannerDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bannerId = null, Object? message = freezed}) {
    return _then(
      _$BannerDeleteResponseDtoImpl(
        bannerId: null == bannerId
            ? _value.bannerId
            : bannerId // ignore: cast_nullable_to_non_nullable
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
class _$BannerDeleteResponseDtoImpl implements _BannerDeleteResponseDto {
  const _$BannerDeleteResponseDtoImpl({
    @JsonKey(name: 'banner_id') required this.bannerId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$BannerDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'banner_id')
  final int bannerId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BannerDeleteResponseDto(bannerId: $bannerId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDeleteResponseDtoImpl &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bannerId, message);

  /// Create a copy of BannerDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDeleteResponseDtoImplCopyWith<_$BannerDeleteResponseDtoImpl>
  get copyWith =>
      __$$BannerDeleteResponseDtoImplCopyWithImpl<
        _$BannerDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDeleteResponseDtoImplToJson(this);
  }
}

abstract class _BannerDeleteResponseDto implements BannerDeleteResponseDto {
  const factory _BannerDeleteResponseDto({
    @JsonKey(name: 'banner_id') required final int bannerId,
    @JsonKey(name: 'message') final String? message,
  }) = _$BannerDeleteResponseDtoImpl;

  factory _BannerDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$BannerDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'banner_id')
  int get bannerId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of BannerDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerDeleteResponseDtoImplCopyWith<_$BannerDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

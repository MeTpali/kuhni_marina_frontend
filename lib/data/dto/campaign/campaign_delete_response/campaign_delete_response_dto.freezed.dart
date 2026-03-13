// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CampaignDeleteResponseDto _$CampaignDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CampaignDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CampaignDeleteResponseDto {
  @JsonKey(name: 'campaign_id')
  int get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CampaignDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignDeleteResponseDtoCopyWith<CampaignDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDeleteResponseDtoCopyWith<$Res> {
  factory $CampaignDeleteResponseDtoCopyWith(
    CampaignDeleteResponseDto value,
    $Res Function(CampaignDeleteResponseDto) then,
  ) = _$CampaignDeleteResponseDtoCopyWithImpl<$Res, CampaignDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'campaign_id') int campaignId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CampaignDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends CampaignDeleteResponseDto
>
    implements $CampaignDeleteResponseDtoCopyWith<$Res> {
  _$CampaignDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? campaignId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            campaignId: null == campaignId
                ? _value.campaignId
                : campaignId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CampaignDeleteResponseDtoImplCopyWith<$Res>
    implements $CampaignDeleteResponseDtoCopyWith<$Res> {
  factory _$$CampaignDeleteResponseDtoImplCopyWith(
    _$CampaignDeleteResponseDtoImpl value,
    $Res Function(_$CampaignDeleteResponseDtoImpl) then,
  ) = __$$CampaignDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'campaign_id') int campaignId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CampaignDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$CampaignDeleteResponseDtoCopyWithImpl<
          $Res,
          _$CampaignDeleteResponseDtoImpl
        >
    implements _$$CampaignDeleteResponseDtoImplCopyWith<$Res> {
  __$$CampaignDeleteResponseDtoImplCopyWithImpl(
    _$CampaignDeleteResponseDtoImpl _value,
    $Res Function(_$CampaignDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CampaignDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? campaignId = null, Object? message = freezed}) {
    return _then(
      _$CampaignDeleteResponseDtoImpl(
        campaignId: null == campaignId
            ? _value.campaignId
            : campaignId // ignore: cast_nullable_to_non_nullable
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
class _$CampaignDeleteResponseDtoImpl implements _CampaignDeleteResponseDto {
  const _$CampaignDeleteResponseDtoImpl({
    @JsonKey(name: 'campaign_id') required this.campaignId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$CampaignDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'campaign_id')
  final int campaignId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CampaignDeleteResponseDto(campaignId: $campaignId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDeleteResponseDtoImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, campaignId, message);

  /// Create a copy of CampaignDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDeleteResponseDtoImplCopyWith<_$CampaignDeleteResponseDtoImpl>
  get copyWith =>
      __$$CampaignDeleteResponseDtoImplCopyWithImpl<
        _$CampaignDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDeleteResponseDtoImplToJson(this);
  }
}

abstract class _CampaignDeleteResponseDto implements CampaignDeleteResponseDto {
  const factory _CampaignDeleteResponseDto({
    @JsonKey(name: 'campaign_id') required final int campaignId,
    @JsonKey(name: 'message') final String? message,
  }) = _$CampaignDeleteResponseDtoImpl;

  factory _CampaignDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$CampaignDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'campaign_id')
  int get campaignId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CampaignDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignDeleteResponseDtoImplCopyWith<_$CampaignDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CampaignResponseDto _$CampaignResponseDtoFromJson(Map<String, dynamic> json) {
  return _CampaignResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CampaignResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_image_url')
  String? get bannerImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'landing_url')
  String? get landingUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'badge_text')
  String? get badgeText => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CampaignResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignResponseDtoCopyWith<CampaignResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignResponseDtoCopyWith<$Res> {
  factory $CampaignResponseDtoCopyWith(
    CampaignResponseDto value,
    $Res Function(CampaignResponseDto) then,
  ) = _$CampaignResponseDtoCopyWithImpl<$Res, CampaignResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CampaignResponseDtoCopyWithImpl<$Res, $Val extends CampaignResponseDto>
    implements $CampaignResponseDtoCopyWith<$Res> {
  _$CampaignResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? bannerImageUrl = freezed,
    Object? landingUrl = freezed,
    Object? badgeText = freezed,
    Object? isActive = null,
    Object? priority = null,
    Object? updatedAt = freezed,
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
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            bannerImageUrl: freezed == bannerImageUrl
                ? _value.bannerImageUrl
                : bannerImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            landingUrl: freezed == landingUrl
                ? _value.landingUrl
                : landingUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            badgeText: freezed == badgeText
                ? _value.badgeText
                : badgeText // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CampaignResponseDtoImplCopyWith<$Res>
    implements $CampaignResponseDtoCopyWith<$Res> {
  factory _$$CampaignResponseDtoImplCopyWith(
    _$CampaignResponseDtoImpl value,
    $Res Function(_$CampaignResponseDtoImpl) then,
  ) = __$$CampaignResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CampaignResponseDtoImplCopyWithImpl<$Res>
    extends _$CampaignResponseDtoCopyWithImpl<$Res, _$CampaignResponseDtoImpl>
    implements _$$CampaignResponseDtoImplCopyWith<$Res> {
  __$$CampaignResponseDtoImplCopyWithImpl(
    _$CampaignResponseDtoImpl _value,
    $Res Function(_$CampaignResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CampaignResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? bannerImageUrl = freezed,
    Object? landingUrl = freezed,
    Object? badgeText = freezed,
    Object? isActive = null,
    Object? priority = null,
    Object? updatedAt = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$CampaignResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        bannerImageUrl: freezed == bannerImageUrl
            ? _value.bannerImageUrl
            : bannerImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        landingUrl: freezed == landingUrl
            ? _value.landingUrl
            : landingUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        badgeText: freezed == badgeText
            ? _value.badgeText
            : badgeText // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
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
class _$CampaignResponseDtoImpl implements _CampaignResponseDto {
  const _$CampaignResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'banner_image_url') this.bannerImageUrl,
    @JsonKey(name: 'landing_url') this.landingUrl,
    @JsonKey(name: 'badge_text') this.badgeText,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'priority') this.priority = 0,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'message') this.message,
  });

  factory _$CampaignResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'banner_image_url')
  final String? bannerImageUrl;
  @override
  @JsonKey(name: 'landing_url')
  final String? landingUrl;
  @override
  @JsonKey(name: 'badge_text')
  final String? badgeText;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'priority')
  final int priority;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CampaignResponseDto(id: $id, name: $name, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, slug: $slug, description: $description, bannerImageUrl: $bannerImageUrl, landingUrl: $landingUrl, badgeText: $badgeText, isActive: $isActive, priority: $priority, updatedAt: $updatedAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                other.bannerImageUrl == bannerImageUrl) &&
            (identical(other.landingUrl, landingUrl) ||
                other.landingUrl == landingUrl) &&
            (identical(other.badgeText, badgeText) ||
                other.badgeText == badgeText) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    startDate,
    endDate,
    createdAt,
    slug,
    description,
    bannerImageUrl,
    landingUrl,
    badgeText,
    isActive,
    priority,
    updatedAt,
    message,
  );

  /// Create a copy of CampaignResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignResponseDtoImplCopyWith<_$CampaignResponseDtoImpl> get copyWith =>
      __$$CampaignResponseDtoImplCopyWithImpl<_$CampaignResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignResponseDtoImplToJson(this);
  }
}

abstract class _CampaignResponseDto implements CampaignResponseDto {
  const factory _CampaignResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'start_date') required final String startDate,
    @JsonKey(name: 'end_date') required final String endDate,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'banner_image_url') final String? bannerImageUrl,
    @JsonKey(name: 'landing_url') final String? landingUrl,
    @JsonKey(name: 'badge_text') final String? badgeText,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'priority') final int priority,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$CampaignResponseDtoImpl;

  factory _CampaignResponseDto.fromJson(Map<String, dynamic> json) =
      _$CampaignResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'banner_image_url')
  String? get bannerImageUrl;
  @override
  @JsonKey(name: 'landing_url')
  String? get landingUrl;
  @override
  @JsonKey(name: 'badge_text')
  String? get badgeText;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'priority')
  int get priority;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CampaignResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignResponseDtoImplCopyWith<_$CampaignResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

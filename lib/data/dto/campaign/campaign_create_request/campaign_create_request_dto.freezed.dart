// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CampaignCreateRequestDto _$CampaignCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CampaignCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CampaignCreateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
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

  /// Serializes this CampaignCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignCreateRequestDtoCopyWith<CampaignCreateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCreateRequestDtoCopyWith<$Res> {
  factory $CampaignCreateRequestDtoCopyWith(
    CampaignCreateRequestDto value,
    $Res Function(CampaignCreateRequestDto) then,
  ) = _$CampaignCreateRequestDtoCopyWithImpl<$Res, CampaignCreateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'priority') int priority,
  });
}

/// @nodoc
class _$CampaignCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends CampaignCreateRequestDto
>
    implements $CampaignCreateRequestDtoCopyWith<$Res> {
  _$CampaignCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? bannerImageUrl = freezed,
    Object? landingUrl = freezed,
    Object? badgeText = freezed,
    Object? isActive = null,
    Object? priority = null,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CampaignCreateRequestDtoImplCopyWith<$Res>
    implements $CampaignCreateRequestDtoCopyWith<$Res> {
  factory _$$CampaignCreateRequestDtoImplCopyWith(
    _$CampaignCreateRequestDtoImpl value,
    $Res Function(_$CampaignCreateRequestDtoImpl) then,
  ) = __$$CampaignCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'start_date') String startDate,
    @JsonKey(name: 'end_date') String endDate,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'banner_image_url') String? bannerImageUrl,
    @JsonKey(name: 'landing_url') String? landingUrl,
    @JsonKey(name: 'badge_text') String? badgeText,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'priority') int priority,
  });
}

/// @nodoc
class __$$CampaignCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$CampaignCreateRequestDtoCopyWithImpl<
          $Res,
          _$CampaignCreateRequestDtoImpl
        >
    implements _$$CampaignCreateRequestDtoImplCopyWith<$Res> {
  __$$CampaignCreateRequestDtoImplCopyWithImpl(
    _$CampaignCreateRequestDtoImpl _value,
    $Res Function(_$CampaignCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CampaignCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? bannerImageUrl = freezed,
    Object? landingUrl = freezed,
    Object? badgeText = freezed,
    Object? isActive = null,
    Object? priority = null,
  }) {
    return _then(
      _$CampaignCreateRequestDtoImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignCreateRequestDtoImpl implements _CampaignCreateRequestDto {
  const _$CampaignCreateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'banner_image_url') this.bannerImageUrl,
    @JsonKey(name: 'landing_url') this.landingUrl,
    @JsonKey(name: 'badge_text') this.badgeText,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'priority') this.priority = 0,
  });

  factory _$CampaignCreateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignCreateRequestDtoImplFromJson(json);

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
  String toString() {
    return 'CampaignCreateRequestDto(name: $name, startDate: $startDate, endDate: $endDate, slug: $slug, description: $description, bannerImageUrl: $bannerImageUrl, landingUrl: $landingUrl, badgeText: $badgeText, isActive: $isActive, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignCreateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
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
                other.priority == priority));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    startDate,
    endDate,
    slug,
    description,
    bannerImageUrl,
    landingUrl,
    badgeText,
    isActive,
    priority,
  );

  /// Create a copy of CampaignCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignCreateRequestDtoImplCopyWith<_$CampaignCreateRequestDtoImpl>
  get copyWith =>
      __$$CampaignCreateRequestDtoImplCopyWithImpl<
        _$CampaignCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignCreateRequestDtoImplToJson(this);
  }
}

abstract class _CampaignCreateRequestDto implements CampaignCreateRequestDto {
  const factory _CampaignCreateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'start_date') required final String startDate,
    @JsonKey(name: 'end_date') required final String endDate,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'banner_image_url') final String? bannerImageUrl,
    @JsonKey(name: 'landing_url') final String? landingUrl,
    @JsonKey(name: 'badge_text') final String? badgeText,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'priority') final int priority,
  }) = _$CampaignCreateRequestDtoImpl;

  factory _CampaignCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$CampaignCreateRequestDtoImpl.fromJson;

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

  /// Create a copy of CampaignCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignCreateRequestDtoImplCopyWith<_$CampaignCreateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

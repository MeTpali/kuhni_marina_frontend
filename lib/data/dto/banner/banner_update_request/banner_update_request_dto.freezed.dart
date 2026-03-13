// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerUpdateRequestDto _$BannerUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _BannerUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$BannerUpdateRequestDto {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_url')
  String? get linkUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'priority')
  int get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this BannerUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerUpdateRequestDtoCopyWith<BannerUpdateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerUpdateRequestDtoCopyWith<$Res> {
  factory $BannerUpdateRequestDtoCopyWith(
    BannerUpdateRequestDto value,
    $Res Function(BannerUpdateRequestDto) then,
  ) = _$BannerUpdateRequestDtoCopyWithImpl<$Res, BannerUpdateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class _$BannerUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends BannerUpdateRequestDto
>
    implements $BannerUpdateRequestDtoCopyWith<$Res> {
  _$BannerUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? priority = null,
    Object? isActive = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            linkUrl: freezed == linkUrl
                ? _value.linkUrl
                : linkUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            priority: null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                      as int,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BannerUpdateRequestDtoImplCopyWith<$Res>
    implements $BannerUpdateRequestDtoCopyWith<$Res> {
  factory _$$BannerUpdateRequestDtoImplCopyWith(
    _$BannerUpdateRequestDtoImpl value,
    $Res Function(_$BannerUpdateRequestDtoImpl) then,
  ) = __$$BannerUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'priority') int priority,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class __$$BannerUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$BannerUpdateRequestDtoCopyWithImpl<$Res, _$BannerUpdateRequestDtoImpl>
    implements _$$BannerUpdateRequestDtoImplCopyWith<$Res> {
  __$$BannerUpdateRequestDtoImplCopyWithImpl(
    _$BannerUpdateRequestDtoImpl _value,
    $Res Function(_$BannerUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? priority = null,
    Object? isActive = freezed,
  }) {
    return _then(
      _$BannerUpdateRequestDtoImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        linkUrl: freezed == linkUrl
            ? _value.linkUrl
            : linkUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        priority: null == priority
            ? _value.priority
            : priority // ignore: cast_nullable_to_non_nullable
                  as int,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerUpdateRequestDtoImpl implements _BannerUpdateRequestDto {
  const _$BannerUpdateRequestDtoImpl({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'link_url') this.linkUrl,
    @JsonKey(name: 'priority') this.priority = 0,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$BannerUpdateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'link_url')
  final String? linkUrl;
  @override
  @JsonKey(name: 'priority')
  final int priority;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;

  @override
  String toString() {
    return 'BannerUpdateRequestDto(title: $title, imageUrl: $imageUrl, linkUrl: $linkUrl, priority: $priority, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerUpdateRequestDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imageUrl, linkUrl, priority, isActive);

  /// Create a copy of BannerUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerUpdateRequestDtoImplCopyWith<_$BannerUpdateRequestDtoImpl>
  get copyWith =>
      __$$BannerUpdateRequestDtoImplCopyWithImpl<_$BannerUpdateRequestDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerUpdateRequestDtoImplToJson(this);
  }
}

abstract class _BannerUpdateRequestDto implements BannerUpdateRequestDto {
  const factory _BannerUpdateRequestDto({
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'link_url') final String? linkUrl,
    @JsonKey(name: 'priority') final int priority,
    @JsonKey(name: 'is_active') final bool? isActive,
  }) = _$BannerUpdateRequestDtoImpl;

  factory _BannerUpdateRequestDto.fromJson(Map<String, dynamic> json) =
      _$BannerUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'link_url')
  String? get linkUrl;
  @override
  @JsonKey(name: 'priority')
  int get priority;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;

  /// Create a copy of BannerUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerUpdateRequestDtoImplCopyWith<_$BannerUpdateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

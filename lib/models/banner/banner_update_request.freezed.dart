// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerUpdateRequest _$BannerUpdateRequestFromJson(Map<String, dynamic> json) {
  return _BannerUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$BannerUpdateRequest {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_url')
  String? get linkUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'position')
  int get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this BannerUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerUpdateRequestCopyWith<BannerUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerUpdateRequestCopyWith<$Res> {
  factory $BannerUpdateRequestCopyWith(
    BannerUpdateRequest value,
    $Res Function(BannerUpdateRequest) then,
  ) = _$BannerUpdateRequestCopyWithImpl<$Res, BannerUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'position') int position,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class _$BannerUpdateRequestCopyWithImpl<$Res, $Val extends BannerUpdateRequest>
    implements $BannerUpdateRequestCopyWith<$Res> {
  _$BannerUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? position = null,
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
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BannerUpdateRequestImplCopyWith<$Res>
    implements $BannerUpdateRequestCopyWith<$Res> {
  factory _$$BannerUpdateRequestImplCopyWith(
    _$BannerUpdateRequestImpl value,
    $Res Function(_$BannerUpdateRequestImpl) then,
  ) = __$$BannerUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'position') int position,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class __$$BannerUpdateRequestImplCopyWithImpl<$Res>
    extends _$BannerUpdateRequestCopyWithImpl<$Res, _$BannerUpdateRequestImpl>
    implements _$$BannerUpdateRequestImplCopyWith<$Res> {
  __$$BannerUpdateRequestImplCopyWithImpl(
    _$BannerUpdateRequestImpl _value,
    $Res Function(_$BannerUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? position = null,
    Object? isActive = freezed,
  }) {
    return _then(
      _$BannerUpdateRequestImpl(
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
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
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
class _$BannerUpdateRequestImpl implements _BannerUpdateRequest {
  const _$BannerUpdateRequestImpl({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'link_url') this.linkUrl,
    @JsonKey(name: 'position') this.position = 0,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$BannerUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerUpdateRequestImplFromJson(json);

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
  @JsonKey(name: 'position')
  final int position;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;

  @override
  String toString() {
    return 'BannerUpdateRequest(title: $title, imageUrl: $imageUrl, linkUrl: $linkUrl, position: $position, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerUpdateRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, imageUrl, linkUrl, position, isActive);

  /// Create a copy of BannerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerUpdateRequestImplCopyWith<_$BannerUpdateRequestImpl> get copyWith =>
      __$$BannerUpdateRequestImplCopyWithImpl<_$BannerUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerUpdateRequestImplToJson(this);
  }
}

abstract class _BannerUpdateRequest implements BannerUpdateRequest {
  const factory _BannerUpdateRequest({
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'link_url') final String? linkUrl,
    @JsonKey(name: 'position') final int position,
    @JsonKey(name: 'is_active') final bool? isActive,
  }) = _$BannerUpdateRequestImpl;

  factory _BannerUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$BannerUpdateRequestImpl.fromJson;

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
  @JsonKey(name: 'position')
  int get position;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;

  /// Create a copy of BannerUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerUpdateRequestImplCopyWith<_$BannerUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

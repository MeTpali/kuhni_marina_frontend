// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerCreateRequest _$BannerCreateRequestFromJson(Map<String, dynamic> json) {
  return _BannerCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$BannerCreateRequest {
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

  /// Serializes this BannerCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerCreateRequestCopyWith<BannerCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCreateRequestCopyWith<$Res> {
  factory $BannerCreateRequestCopyWith(
    BannerCreateRequest value,
    $Res Function(BannerCreateRequest) then,
  ) = _$BannerCreateRequestCopyWithImpl<$Res, BannerCreateRequest>;
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
class _$BannerCreateRequestCopyWithImpl<$Res, $Val extends BannerCreateRequest>
    implements $BannerCreateRequestCopyWith<$Res> {
  _$BannerCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerCreateRequest
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
abstract class _$$BannerCreateRequestImplCopyWith<$Res>
    implements $BannerCreateRequestCopyWith<$Res> {
  factory _$$BannerCreateRequestImplCopyWith(
    _$BannerCreateRequestImpl value,
    $Res Function(_$BannerCreateRequestImpl) then,
  ) = __$$BannerCreateRequestImplCopyWithImpl<$Res>;
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
class __$$BannerCreateRequestImplCopyWithImpl<$Res>
    extends _$BannerCreateRequestCopyWithImpl<$Res, _$BannerCreateRequestImpl>
    implements _$$BannerCreateRequestImplCopyWith<$Res> {
  __$$BannerCreateRequestImplCopyWithImpl(
    _$BannerCreateRequestImpl _value,
    $Res Function(_$BannerCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerCreateRequest
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
      _$BannerCreateRequestImpl(
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
class _$BannerCreateRequestImpl implements _BannerCreateRequest {
  const _$BannerCreateRequestImpl({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'link_url') this.linkUrl,
    @JsonKey(name: 'position') this.position = 0,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$BannerCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerCreateRequestImplFromJson(json);

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
    return 'BannerCreateRequest(title: $title, imageUrl: $imageUrl, linkUrl: $linkUrl, position: $position, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerCreateRequestImpl &&
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

  /// Create a copy of BannerCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerCreateRequestImplCopyWith<_$BannerCreateRequestImpl> get copyWith =>
      __$$BannerCreateRequestImplCopyWithImpl<_$BannerCreateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerCreateRequestImplToJson(this);
  }
}

abstract class _BannerCreateRequest implements BannerCreateRequest {
  const factory _BannerCreateRequest({
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'link_url') final String? linkUrl,
    @JsonKey(name: 'position') final int position,
    @JsonKey(name: 'is_active') final bool? isActive,
  }) = _$BannerCreateRequestImpl;

  factory _BannerCreateRequest.fromJson(Map<String, dynamic> json) =
      _$BannerCreateRequestImpl.fromJson;

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

  /// Create a copy of BannerCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerCreateRequestImplCopyWith<_$BannerCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

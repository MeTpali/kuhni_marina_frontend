// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return _BannerResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BannerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerResponseCopyWith<BannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResponseCopyWith<$Res> {
  factory $BannerResponseCopyWith(
    BannerResponse value,
    $Res Function(BannerResponse) then,
  ) = _$BannerResponseCopyWithImpl<$Res, BannerResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'position') int position,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$BannerResponseCopyWithImpl<$Res, $Val extends BannerResponse>
    implements $BannerResponseCopyWith<$Res> {
  _$BannerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? position = null,
    Object? isActive = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$BannerResponseImplCopyWith<$Res>
    implements $BannerResponseCopyWith<$Res> {
  factory _$$BannerResponseImplCopyWith(
    _$BannerResponseImpl value,
    $Res Function(_$BannerResponseImpl) then,
  ) = __$$BannerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'link_url') String? linkUrl,
    @JsonKey(name: 'position') int position,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$BannerResponseImplCopyWithImpl<$Res>
    extends _$BannerResponseCopyWithImpl<$Res, _$BannerResponseImpl>
    implements _$$BannerResponseImplCopyWith<$Res> {
  __$$BannerResponseImplCopyWithImpl(
    _$BannerResponseImpl _value,
    $Res Function(_$BannerResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? linkUrl = freezed,
    Object? position = null,
    Object? isActive = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$BannerResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$BannerResponseImpl implements _BannerResponse {
  const _$BannerResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'link_url') this.linkUrl,
    @JsonKey(name: 'position') this.position = 0,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'message') this.message,
  });

  factory _$BannerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
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
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BannerResponse(id: $id, title: $title, imageUrl: $imageUrl, linkUrl: $linkUrl, position: $position, isActive: $isActive, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    imageUrl,
    linkUrl,
    position,
    isActive,
    message,
  );

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      __$$BannerResponseImplCopyWithImpl<_$BannerResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerResponseImplToJson(this);
  }
}

abstract class _BannerResponse implements BannerResponse {
  const factory _BannerResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'link_url') final String? linkUrl,
    @JsonKey(name: 'position') final int position,
    @JsonKey(name: 'is_active') final bool? isActive,
    @JsonKey(name: 'message') final String? message,
  }) = _$BannerResponseImpl;

  factory _BannerResponse.fromJson(Map<String, dynamic> json) =
      _$BannerResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
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
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

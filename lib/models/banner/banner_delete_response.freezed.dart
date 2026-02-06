// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerDeleteResponse _$BannerDeleteResponseFromJson(Map<String, dynamic> json) {
  return _BannerDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerDeleteResponse {
  @JsonKey(name: 'banner_id')
  int get bannerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BannerDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerDeleteResponseCopyWith<BannerDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDeleteResponseCopyWith<$Res> {
  factory $BannerDeleteResponseCopyWith(
    BannerDeleteResponse value,
    $Res Function(BannerDeleteResponse) then,
  ) = _$BannerDeleteResponseCopyWithImpl<$Res, BannerDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'banner_id') int bannerId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$BannerDeleteResponseCopyWithImpl<
  $Res,
  $Val extends BannerDeleteResponse
>
    implements $BannerDeleteResponseCopyWith<$Res> {
  _$BannerDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerDeleteResponse
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
abstract class _$$BannerDeleteResponseImplCopyWith<$Res>
    implements $BannerDeleteResponseCopyWith<$Res> {
  factory _$$BannerDeleteResponseImplCopyWith(
    _$BannerDeleteResponseImpl value,
    $Res Function(_$BannerDeleteResponseImpl) then,
  ) = __$$BannerDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'banner_id') int bannerId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$BannerDeleteResponseImplCopyWithImpl<$Res>
    extends _$BannerDeleteResponseCopyWithImpl<$Res, _$BannerDeleteResponseImpl>
    implements _$$BannerDeleteResponseImplCopyWith<$Res> {
  __$$BannerDeleteResponseImplCopyWithImpl(
    _$BannerDeleteResponseImpl _value,
    $Res Function(_$BannerDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bannerId = null, Object? message = freezed}) {
    return _then(
      _$BannerDeleteResponseImpl(
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
class _$BannerDeleteResponseImpl implements _BannerDeleteResponse {
  const _$BannerDeleteResponseImpl({
    @JsonKey(name: 'banner_id') required this.bannerId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$BannerDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'banner_id')
  final int bannerId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BannerDeleteResponse(bannerId: $bannerId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDeleteResponseImpl &&
            (identical(other.bannerId, bannerId) ||
                other.bannerId == bannerId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bannerId, message);

  /// Create a copy of BannerDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDeleteResponseImplCopyWith<_$BannerDeleteResponseImpl>
  get copyWith =>
      __$$BannerDeleteResponseImplCopyWithImpl<_$BannerDeleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerDeleteResponseImplToJson(this);
  }
}

abstract class _BannerDeleteResponse implements BannerDeleteResponse {
  const factory _BannerDeleteResponse({
    @JsonKey(name: 'banner_id') required final int bannerId,
    @JsonKey(name: 'message') final String? message,
  }) = _$BannerDeleteResponseImpl;

  factory _BannerDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$BannerDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'banner_id')
  int get bannerId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of BannerDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerDeleteResponseImplCopyWith<_$BannerDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

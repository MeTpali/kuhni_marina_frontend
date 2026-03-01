// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerListResponseDto _$BannerListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _BannerListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$BannerListResponseDto {
  @JsonKey(name: 'items')
  List<BannerResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this BannerListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerListResponseDtoCopyWith<BannerListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerListResponseDtoCopyWith<$Res> {
  factory $BannerListResponseDtoCopyWith(
    BannerListResponseDto value,
    $Res Function(BannerListResponseDto) then,
  ) = _$BannerListResponseDtoCopyWithImpl<$Res, BannerListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<BannerResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$BannerListResponseDtoCopyWithImpl<
  $Res,
  $Val extends BannerListResponseDto
>
    implements $BannerListResponseDtoCopyWith<$Res> {
  _$BannerListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<BannerResponseDto>,
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
abstract class _$$BannerListResponseDtoImplCopyWith<$Res>
    implements $BannerListResponseDtoCopyWith<$Res> {
  factory _$$BannerListResponseDtoImplCopyWith(
    _$BannerListResponseDtoImpl value,
    $Res Function(_$BannerListResponseDtoImpl) then,
  ) = __$$BannerListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<BannerResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$BannerListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$BannerListResponseDtoCopyWithImpl<$Res, _$BannerListResponseDtoImpl>
    implements _$$BannerListResponseDtoImplCopyWith<$Res> {
  __$$BannerListResponseDtoImplCopyWithImpl(
    _$BannerListResponseDtoImpl _value,
    $Res Function(_$BannerListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$BannerListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<BannerResponseDto>,
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
class _$BannerListResponseDtoImpl implements _BannerListResponseDto {
  const _$BannerListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<BannerResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$BannerListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerListResponseDtoImplFromJson(json);

  final List<BannerResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<BannerResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'BannerListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerListResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    message,
  );

  /// Create a copy of BannerListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerListResponseDtoImplCopyWith<_$BannerListResponseDtoImpl>
  get copyWith =>
      __$$BannerListResponseDtoImplCopyWithImpl<_$BannerListResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerListResponseDtoImplToJson(this);
  }
}

abstract class _BannerListResponseDto implements BannerListResponseDto {
  const factory _BannerListResponseDto({
    @JsonKey(name: 'items') required final List<BannerResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$BannerListResponseDtoImpl;

  factory _BannerListResponseDto.fromJson(Map<String, dynamic> json) =
      _$BannerListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<BannerResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of BannerListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerListResponseDtoImplCopyWith<_$BannerListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

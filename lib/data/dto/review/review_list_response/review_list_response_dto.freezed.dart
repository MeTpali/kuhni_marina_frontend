// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewListResponseDto _$ReviewListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ReviewListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ReviewListResponseDto {
  @JsonKey(name: 'items')
  List<ReviewResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewListResponseDtoCopyWith<ReviewListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListResponseDtoCopyWith<$Res> {
  factory $ReviewListResponseDtoCopyWith(
    ReviewListResponseDto value,
    $Res Function(ReviewListResponseDto) then,
  ) = _$ReviewListResponseDtoCopyWithImpl<$Res, ReviewListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ReviewResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ReviewListResponseDto
>
    implements $ReviewListResponseDtoCopyWith<$Res> {
  _$ReviewListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ReviewResponseDto>,
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
abstract class _$$ReviewListResponseDtoImplCopyWith<$Res>
    implements $ReviewListResponseDtoCopyWith<$Res> {
  factory _$$ReviewListResponseDtoImplCopyWith(
    _$ReviewListResponseDtoImpl value,
    $Res Function(_$ReviewListResponseDtoImpl) then,
  ) = __$$ReviewListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ReviewResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ReviewListResponseDtoCopyWithImpl<$Res, _$ReviewListResponseDtoImpl>
    implements _$$ReviewListResponseDtoImplCopyWith<$Res> {
  __$$ReviewListResponseDtoImplCopyWithImpl(
    _$ReviewListResponseDtoImpl _value,
    $Res Function(_$ReviewListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ReviewListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ReviewResponseDto>,
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
class _$ReviewListResponseDtoImpl implements _ReviewListResponseDto {
  const _$ReviewListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<ReviewResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ReviewListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewListResponseDtoImplFromJson(json);

  final List<ReviewResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ReviewResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewListResponseDtoImpl &&
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

  /// Create a copy of ReviewListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewListResponseDtoImplCopyWith<_$ReviewListResponseDtoImpl>
  get copyWith =>
      __$$ReviewListResponseDtoImplCopyWithImpl<_$ReviewListResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewListResponseDtoImplToJson(this);
  }
}

abstract class _ReviewListResponseDto implements ReviewListResponseDto {
  const factory _ReviewListResponseDto({
    @JsonKey(name: 'items') required final List<ReviewResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewListResponseDtoImpl;

  factory _ReviewListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ReviewListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ReviewResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewListResponseDtoImplCopyWith<_$ReviewListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

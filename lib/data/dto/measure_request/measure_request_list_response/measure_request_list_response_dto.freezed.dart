// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MeasureRequestListResponseDto _$MeasureRequestListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _MeasureRequestListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MeasureRequestListResponseDto {
  @JsonKey(name: 'items')
  List<MeasureRequestResponseDto> get items =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this MeasureRequestListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestListResponseDtoCopyWith<MeasureRequestListResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestListResponseDtoCopyWith<$Res> {
  factory $MeasureRequestListResponseDtoCopyWith(
    MeasureRequestListResponseDto value,
    $Res Function(MeasureRequestListResponseDto) then,
  ) =
      _$MeasureRequestListResponseDtoCopyWithImpl<
        $Res,
        MeasureRequestListResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<MeasureRequestResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$MeasureRequestListResponseDtoCopyWithImpl<
  $Res,
  $Val extends MeasureRequestListResponseDto
>
    implements $MeasureRequestListResponseDtoCopyWith<$Res> {
  _$MeasureRequestListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<MeasureRequestResponseDto>,
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
abstract class _$$MeasureRequestListResponseDtoImplCopyWith<$Res>
    implements $MeasureRequestListResponseDtoCopyWith<$Res> {
  factory _$$MeasureRequestListResponseDtoImplCopyWith(
    _$MeasureRequestListResponseDtoImpl value,
    $Res Function(_$MeasureRequestListResponseDtoImpl) then,
  ) = __$$MeasureRequestListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<MeasureRequestResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$MeasureRequestListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestListResponseDtoCopyWithImpl<
          $Res,
          _$MeasureRequestListResponseDtoImpl
        >
    implements _$$MeasureRequestListResponseDtoImplCopyWith<$Res> {
  __$$MeasureRequestListResponseDtoImplCopyWithImpl(
    _$MeasureRequestListResponseDtoImpl _value,
    $Res Function(_$MeasureRequestListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$MeasureRequestListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<MeasureRequestResponseDto>,
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
class _$MeasureRequestListResponseDtoImpl
    implements _MeasureRequestListResponseDto {
  const _$MeasureRequestListResponseDtoImpl({
    @JsonKey(name: 'items')
    required final List<MeasureRequestResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$MeasureRequestListResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MeasureRequestListResponseDtoImplFromJson(json);

  final List<MeasureRequestResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<MeasureRequestResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'MeasureRequestListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestListResponseDtoImpl &&
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

  /// Create a copy of MeasureRequestListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestListResponseDtoImplCopyWith<
    _$MeasureRequestListResponseDtoImpl
  >
  get copyWith =>
      __$$MeasureRequestListResponseDtoImplCopyWithImpl<
        _$MeasureRequestListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureRequestListResponseDtoImplToJson(this);
  }
}

abstract class _MeasureRequestListResponseDto
    implements MeasureRequestListResponseDto {
  const factory _MeasureRequestListResponseDto({
    @JsonKey(name: 'items')
    required final List<MeasureRequestResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$MeasureRequestListResponseDtoImpl;

  factory _MeasureRequestListResponseDto.fromJson(Map<String, dynamic> json) =
      _$MeasureRequestListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<MeasureRequestResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of MeasureRequestListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestListResponseDtoImplCopyWith<
    _$MeasureRequestListResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

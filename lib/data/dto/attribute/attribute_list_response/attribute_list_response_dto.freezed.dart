// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeListResponseDto _$AttributeListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AttributeListResponseDto {
  @JsonKey(name: 'items')
  List<AttributeResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeListResponseDtoCopyWith<AttributeListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeListResponseDtoCopyWith<$Res> {
  factory $AttributeListResponseDtoCopyWith(
    AttributeListResponseDto value,
    $Res Function(AttributeListResponseDto) then,
  ) = _$AttributeListResponseDtoCopyWithImpl<$Res, AttributeListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<AttributeResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeListResponseDtoCopyWithImpl<
  $Res,
  $Val extends AttributeListResponseDto
>
    implements $AttributeListResponseDtoCopyWith<$Res> {
  _$AttributeListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<AttributeResponseDto>,
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
abstract class _$$AttributeListResponseDtoImplCopyWith<$Res>
    implements $AttributeListResponseDtoCopyWith<$Res> {
  factory _$$AttributeListResponseDtoImplCopyWith(
    _$AttributeListResponseDtoImpl value,
    $Res Function(_$AttributeListResponseDtoImpl) then,
  ) = __$$AttributeListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<AttributeResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$AttributeListResponseDtoCopyWithImpl<
          $Res,
          _$AttributeListResponseDtoImpl
        >
    implements _$$AttributeListResponseDtoImplCopyWith<$Res> {
  __$$AttributeListResponseDtoImplCopyWithImpl(
    _$AttributeListResponseDtoImpl _value,
    $Res Function(_$AttributeListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$AttributeListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<AttributeResponseDto>,
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
class _$AttributeListResponseDtoImpl implements _AttributeListResponseDto {
  const _$AttributeListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<AttributeResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$AttributeListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeListResponseDtoImplFromJson(json);

  final List<AttributeResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<AttributeResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeListResponseDtoImpl &&
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

  /// Create a copy of AttributeListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeListResponseDtoImplCopyWith<_$AttributeListResponseDtoImpl>
  get copyWith =>
      __$$AttributeListResponseDtoImplCopyWithImpl<
        _$AttributeListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeListResponseDtoImplToJson(this);
  }
}

abstract class _AttributeListResponseDto implements AttributeListResponseDto {
  const factory _AttributeListResponseDto({
    @JsonKey(name: 'items') required final List<AttributeResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeListResponseDtoImpl;

  factory _AttributeListResponseDto.fromJson(Map<String, dynamic> json) =
      _$AttributeListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<AttributeResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeListResponseDtoImplCopyWith<_$AttributeListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageListResponseDto _$ProductImageListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductImageListResponseDto {
  @JsonKey(name: 'items')
  List<ProductImageResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductImageListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageListResponseDtoCopyWith<ProductImageListResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageListResponseDtoCopyWith<$Res> {
  factory $ProductImageListResponseDtoCopyWith(
    ProductImageListResponseDto value,
    $Res Function(ProductImageListResponseDto) then,
  ) =
      _$ProductImageListResponseDtoCopyWithImpl<
        $Res,
        ProductImageListResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductImageListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductImageListResponseDto
>
    implements $ProductImageListResponseDtoCopyWith<$Res> {
  _$ProductImageListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProductImageResponseDto>,
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
abstract class _$$ProductImageListResponseDtoImplCopyWith<$Res>
    implements $ProductImageListResponseDtoCopyWith<$Res> {
  factory _$$ProductImageListResponseDtoImplCopyWith(
    _$ProductImageListResponseDtoImpl value,
    $Res Function(_$ProductImageListResponseDtoImpl) then,
  ) = __$$ProductImageListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductImageListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductImageListResponseDtoCopyWithImpl<
          $Res,
          _$ProductImageListResponseDtoImpl
        >
    implements _$$ProductImageListResponseDtoImplCopyWith<$Res> {
  __$$ProductImageListResponseDtoImplCopyWithImpl(
    _$ProductImageListResponseDtoImpl _value,
    $Res Function(_$ProductImageListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProductImageListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProductImageResponseDto>,
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
class _$ProductImageListResponseDtoImpl
    implements _ProductImageListResponseDto {
  const _$ProductImageListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<ProductImageResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProductImageListResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductImageListResponseDtoImplFromJson(json);

  final List<ProductImageResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ProductImageResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductImageListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageListResponseDtoImpl &&
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

  /// Create a copy of ProductImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageListResponseDtoImplCopyWith<_$ProductImageListResponseDtoImpl>
  get copyWith =>
      __$$ProductImageListResponseDtoImplCopyWithImpl<
        _$ProductImageListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageListResponseDtoImplToJson(this);
  }
}

abstract class _ProductImageListResponseDto
    implements ProductImageListResponseDto {
  const factory _ProductImageListResponseDto({
    @JsonKey(name: 'items') required final List<ProductImageResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductImageListResponseDtoImpl;

  factory _ProductImageListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductImageListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProductImageResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageListResponseDtoImplCopyWith<_$ProductImageListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

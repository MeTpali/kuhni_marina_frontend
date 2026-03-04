// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_suggestions_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductSearchSuggestionsResponseDto
_$ProductSearchSuggestionsResponseDtoFromJson(Map<String, dynamic> json) {
  return _ProductSearchSuggestionsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductSearchSuggestionsResponseDto {
  @JsonKey(name: 'items')
  List<ProductSuggestionItemResponseDto> get items =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductSearchSuggestionsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSearchSuggestionsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSearchSuggestionsResponseDtoCopyWith<
    ProductSearchSuggestionsResponseDto
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchSuggestionsResponseDtoCopyWith<$Res> {
  factory $ProductSearchSuggestionsResponseDtoCopyWith(
    ProductSearchSuggestionsResponseDto value,
    $Res Function(ProductSearchSuggestionsResponseDto) then,
  ) =
      _$ProductSearchSuggestionsResponseDtoCopyWithImpl<
        $Res,
        ProductSearchSuggestionsResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductSuggestionItemResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductSearchSuggestionsResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductSearchSuggestionsResponseDto
>
    implements $ProductSearchSuggestionsResponseDtoCopyWith<$Res> {
  _$ProductSearchSuggestionsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSearchSuggestionsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProductSuggestionItemResponseDto>,
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
abstract class _$$ProductSearchSuggestionsResponseDtoImplCopyWith<$Res>
    implements $ProductSearchSuggestionsResponseDtoCopyWith<$Res> {
  factory _$$ProductSearchSuggestionsResponseDtoImplCopyWith(
    _$ProductSearchSuggestionsResponseDtoImpl value,
    $Res Function(_$ProductSearchSuggestionsResponseDtoImpl) then,
  ) = __$$ProductSearchSuggestionsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductSuggestionItemResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductSearchSuggestionsResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductSearchSuggestionsResponseDtoCopyWithImpl<
          $Res,
          _$ProductSearchSuggestionsResponseDtoImpl
        >
    implements _$$ProductSearchSuggestionsResponseDtoImplCopyWith<$Res> {
  __$$ProductSearchSuggestionsResponseDtoImplCopyWithImpl(
    _$ProductSearchSuggestionsResponseDtoImpl _value,
    $Res Function(_$ProductSearchSuggestionsResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductSearchSuggestionsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProductSearchSuggestionsResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProductSuggestionItemResponseDto>,
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
class _$ProductSearchSuggestionsResponseDtoImpl
    implements _ProductSearchSuggestionsResponseDto {
  const _$ProductSearchSuggestionsResponseDtoImpl({
    @JsonKey(name: 'items')
    required final List<ProductSuggestionItemResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProductSearchSuggestionsResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductSearchSuggestionsResponseDtoImplFromJson(json);

  final List<ProductSuggestionItemResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ProductSuggestionItemResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductSearchSuggestionsResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchSuggestionsResponseDtoImpl &&
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

  /// Create a copy of ProductSearchSuggestionsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchSuggestionsResponseDtoImplCopyWith<
    _$ProductSearchSuggestionsResponseDtoImpl
  >
  get copyWith =>
      __$$ProductSearchSuggestionsResponseDtoImplCopyWithImpl<
        _$ProductSearchSuggestionsResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSearchSuggestionsResponseDtoImplToJson(this);
  }
}

abstract class _ProductSearchSuggestionsResponseDto
    implements ProductSearchSuggestionsResponseDto {
  const factory _ProductSearchSuggestionsResponseDto({
    @JsonKey(name: 'items')
    required final List<ProductSuggestionItemResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductSearchSuggestionsResponseDtoImpl;

  factory _ProductSearchSuggestionsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ProductSearchSuggestionsResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProductSuggestionItemResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductSearchSuggestionsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSearchSuggestionsResponseDtoImplCopyWith<
    _$ProductSearchSuggestionsResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

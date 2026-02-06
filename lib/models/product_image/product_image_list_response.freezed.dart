// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageListResponse _$ProductImageListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductImageListResponse {
  @JsonKey(name: 'items')
  List<ProductImageResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductImageListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageListResponseCopyWith<ProductImageListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageListResponseCopyWith<$Res> {
  factory $ProductImageListResponseCopyWith(
    ProductImageListResponse value,
    $Res Function(ProductImageListResponse) then,
  ) = _$ProductImageListResponseCopyWithImpl<$Res, ProductImageListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductImageResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductImageListResponseCopyWithImpl<
  $Res,
  $Val extends ProductImageListResponse
>
    implements $ProductImageListResponseCopyWith<$Res> {
  _$ProductImageListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProductImageResponse>,
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
abstract class _$$ProductImageListResponseImplCopyWith<$Res>
    implements $ProductImageListResponseCopyWith<$Res> {
  factory _$$ProductImageListResponseImplCopyWith(
    _$ProductImageListResponseImpl value,
    $Res Function(_$ProductImageListResponseImpl) then,
  ) = __$$ProductImageListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductImageResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductImageListResponseImplCopyWithImpl<$Res>
    extends
        _$ProductImageListResponseCopyWithImpl<
          $Res,
          _$ProductImageListResponseImpl
        >
    implements _$$ProductImageListResponseImplCopyWith<$Res> {
  __$$ProductImageListResponseImplCopyWithImpl(
    _$ProductImageListResponseImpl _value,
    $Res Function(_$ProductImageListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProductImageListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProductImageResponse>,
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
class _$ProductImageListResponseImpl implements _ProductImageListResponse {
  const _$ProductImageListResponseImpl({
    @JsonKey(name: 'items') required final List<ProductImageResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProductImageListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageListResponseImplFromJson(json);

  final List<ProductImageResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ProductImageResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductImageListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageListResponseImpl &&
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

  /// Create a copy of ProductImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageListResponseImplCopyWith<_$ProductImageListResponseImpl>
  get copyWith =>
      __$$ProductImageListResponseImplCopyWithImpl<
        _$ProductImageListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageListResponseImplToJson(this);
  }
}

abstract class _ProductImageListResponse implements ProductImageListResponse {
  const factory _ProductImageListResponse({
    @JsonKey(name: 'items') required final List<ProductImageResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductImageListResponseImpl;

  factory _ProductImageListResponse.fromJson(Map<String, dynamic> json) =
      _$ProductImageListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProductImageResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageListResponseImplCopyWith<_$ProductImageListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

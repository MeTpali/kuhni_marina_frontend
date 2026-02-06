// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_catalog_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductCatalogResponse _$ProductCatalogResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductCatalogResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductCatalogResponse {
  @JsonKey(name: 'items')
  List<ProductListItemResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductCatalogResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCatalogResponseCopyWith<ProductCatalogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCatalogResponseCopyWith<$Res> {
  factory $ProductCatalogResponseCopyWith(
    ProductCatalogResponse value,
    $Res Function(ProductCatalogResponse) then,
  ) = _$ProductCatalogResponseCopyWithImpl<$Res, ProductCatalogResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductListItemResponse> items,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductCatalogResponseCopyWithImpl<
  $Res,
  $Val extends ProductCatalogResponse
>
    implements $ProductCatalogResponseCopyWith<$Res> {
  _$ProductCatalogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProductListItemResponse>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pageSize: null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductCatalogResponseImplCopyWith<$Res>
    implements $ProductCatalogResponseCopyWith<$Res> {
  factory _$$ProductCatalogResponseImplCopyWith(
    _$ProductCatalogResponseImpl value,
    $Res Function(_$ProductCatalogResponseImpl) then,
  ) = __$$ProductCatalogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProductListItemResponse> items,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductCatalogResponseImplCopyWithImpl<$Res>
    extends
        _$ProductCatalogResponseCopyWithImpl<$Res, _$ProductCatalogResponseImpl>
    implements _$$ProductCatalogResponseImplCopyWith<$Res> {
  __$$ProductCatalogResponseImplCopyWithImpl(
    _$ProductCatalogResponseImpl _value,
    $Res Function(_$ProductCatalogResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProductCatalogResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProductListItemResponse>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
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
class _$ProductCatalogResponseImpl implements _ProductCatalogResponse {
  const _$ProductCatalogResponseImpl({
    @JsonKey(name: 'items') required final List<ProductListItemResponse> items,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'page') required this.page,
    @JsonKey(name: 'page_size') required this.pageSize,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProductCatalogResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCatalogResponseImplFromJson(json);

  final List<ProductListItemResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ProductListItemResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductCatalogResponse(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCatalogResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
    totalPages,
    message,
  );

  /// Create a copy of ProductCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCatalogResponseImplCopyWith<_$ProductCatalogResponseImpl>
  get copyWith =>
      __$$ProductCatalogResponseImplCopyWithImpl<_$ProductCatalogResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCatalogResponseImplToJson(this);
  }
}

abstract class _ProductCatalogResponse implements ProductCatalogResponse {
  const factory _ProductCatalogResponse({
    @JsonKey(name: 'items') required final List<ProductListItemResponse> items,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'page') required final int page,
    @JsonKey(name: 'page_size') required final int pageSize,
    @JsonKey(name: 'total_pages') required final int totalPages,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductCatalogResponseImpl;

  factory _ProductCatalogResponse.fromJson(Map<String, dynamic> json) =
      _$ProductCatalogResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProductListItemResponse> get items;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductCatalogResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCatalogResponseImplCopyWith<_$ProductCatalogResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

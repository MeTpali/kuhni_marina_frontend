// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductCatalog {
  List<ProductListItem> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  CatalogFacets? get facets => throw _privateConstructorUsedError;

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCatalogCopyWith<ProductCatalog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCatalogCopyWith<$Res> {
  factory $ProductCatalogCopyWith(
    ProductCatalog value,
    $Res Function(ProductCatalog) then,
  ) = _$ProductCatalogCopyWithImpl<$Res, ProductCatalog>;
  @useResult
  $Res call({
    List<ProductListItem> items,
    int total,
    int page,
    int pageSize,
    int totalPages,
    CatalogFacets? facets,
  });

  $CatalogFacetsCopyWith<$Res>? get facets;
}

/// @nodoc
class _$ProductCatalogCopyWithImpl<$Res, $Val extends ProductCatalog>
    implements $ProductCatalogCopyWith<$Res> {
  _$ProductCatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? facets = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProductListItem>,
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
            facets: freezed == facets
                ? _value.facets
                : facets // ignore: cast_nullable_to_non_nullable
                      as CatalogFacets?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatalogFacetsCopyWith<$Res>? get facets {
    if (_value.facets == null) {
      return null;
    }

    return $CatalogFacetsCopyWith<$Res>(_value.facets!, (value) {
      return _then(_value.copyWith(facets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCatalogImplCopyWith<$Res>
    implements $ProductCatalogCopyWith<$Res> {
  factory _$$ProductCatalogImplCopyWith(
    _$ProductCatalogImpl value,
    $Res Function(_$ProductCatalogImpl) then,
  ) = __$$ProductCatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductListItem> items,
    int total,
    int page,
    int pageSize,
    int totalPages,
    CatalogFacets? facets,
  });

  @override
  $CatalogFacetsCopyWith<$Res>? get facets;
}

/// @nodoc
class __$$ProductCatalogImplCopyWithImpl<$Res>
    extends _$ProductCatalogCopyWithImpl<$Res, _$ProductCatalogImpl>
    implements _$$ProductCatalogImplCopyWith<$Res> {
  __$$ProductCatalogImplCopyWithImpl(
    _$ProductCatalogImpl _value,
    $Res Function(_$ProductCatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? facets = freezed,
  }) {
    return _then(
      _$ProductCatalogImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProductListItem>,
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
        facets: freezed == facets
            ? _value.facets
            : facets // ignore: cast_nullable_to_non_nullable
                  as CatalogFacets?,
      ),
    );
  }
}

/// @nodoc

class _$ProductCatalogImpl implements _ProductCatalog {
  const _$ProductCatalogImpl({
    required final List<ProductListItem> items,
    required this.total,
    required this.page,
    required this.pageSize,
    required this.totalPages,
    this.facets,
  }) : _items = items;

  final List<ProductListItem> _items;
  @override
  List<ProductListItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final CatalogFacets? facets;

  @override
  String toString() {
    return 'ProductCatalog(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages, facets: $facets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCatalogImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.facets, facets) || other.facets == facets));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
    totalPages,
    facets,
  );

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCatalogImplCopyWith<_$ProductCatalogImpl> get copyWith =>
      __$$ProductCatalogImplCopyWithImpl<_$ProductCatalogImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductCatalog implements ProductCatalog {
  const factory _ProductCatalog({
    required final List<ProductListItem> items,
    required final int total,
    required final int page,
    required final int pageSize,
    required final int totalPages,
    final CatalogFacets? facets,
  }) = _$ProductCatalogImpl;

  @override
  List<ProductListItem> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  CatalogFacets? get facets;

  /// Create a copy of ProductCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCatalogImplCopyWith<_$ProductCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

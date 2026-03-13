// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_facets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CatalogFacets {
  List<CategoryFacetTreeNode> get categories =>
      throw _privateConstructorUsedError;
  List<AttributeFacetItem> get attributes => throw _privateConstructorUsedError;

  /// Create a copy of CatalogFacets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogFacetsCopyWith<CatalogFacets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogFacetsCopyWith<$Res> {
  factory $CatalogFacetsCopyWith(
    CatalogFacets value,
    $Res Function(CatalogFacets) then,
  ) = _$CatalogFacetsCopyWithImpl<$Res, CatalogFacets>;
  @useResult
  $Res call({
    List<CategoryFacetTreeNode> categories,
    List<AttributeFacetItem> attributes,
  });
}

/// @nodoc
class _$CatalogFacetsCopyWithImpl<$Res, $Val extends CatalogFacets>
    implements $CatalogFacetsCopyWith<$Res> {
  _$CatalogFacetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogFacets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? attributes = null}) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryFacetTreeNode>,
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<AttributeFacetItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogFacetsImplCopyWith<$Res>
    implements $CatalogFacetsCopyWith<$Res> {
  factory _$$CatalogFacetsImplCopyWith(
    _$CatalogFacetsImpl value,
    $Res Function(_$CatalogFacetsImpl) then,
  ) = __$$CatalogFacetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<CategoryFacetTreeNode> categories,
    List<AttributeFacetItem> attributes,
  });
}

/// @nodoc
class __$$CatalogFacetsImplCopyWithImpl<$Res>
    extends _$CatalogFacetsCopyWithImpl<$Res, _$CatalogFacetsImpl>
    implements _$$CatalogFacetsImplCopyWith<$Res> {
  __$$CatalogFacetsImplCopyWithImpl(
    _$CatalogFacetsImpl _value,
    $Res Function(_$CatalogFacetsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogFacets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? attributes = null}) {
    return _then(
      _$CatalogFacetsImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryFacetTreeNode>,
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<AttributeFacetItem>,
      ),
    );
  }
}

/// @nodoc

class _$CatalogFacetsImpl implements _CatalogFacets {
  const _$CatalogFacetsImpl({
    final List<CategoryFacetTreeNode> categories = const [],
    final List<AttributeFacetItem> attributes = const [],
  }) : _categories = categories,
       _attributes = attributes;

  final List<CategoryFacetTreeNode> _categories;
  @override
  @JsonKey()
  List<CategoryFacetTreeNode> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<AttributeFacetItem> _attributes;
  @override
  @JsonKey()
  List<AttributeFacetItem> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'CatalogFacets(categories: $categories, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogFacetsImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_attributes),
  );

  /// Create a copy of CatalogFacets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogFacetsImplCopyWith<_$CatalogFacetsImpl> get copyWith =>
      __$$CatalogFacetsImplCopyWithImpl<_$CatalogFacetsImpl>(this, _$identity);
}

abstract class _CatalogFacets implements CatalogFacets {
  const factory _CatalogFacets({
    final List<CategoryFacetTreeNode> categories,
    final List<AttributeFacetItem> attributes,
  }) = _$CatalogFacetsImpl;

  @override
  List<CategoryFacetTreeNode> get categories;
  @override
  List<AttributeFacetItem> get attributes;

  /// Create a copy of CatalogFacets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogFacetsImplCopyWith<_$CatalogFacetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

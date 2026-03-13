// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_facets_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CatalogFacetsDto _$CatalogFacetsDtoFromJson(Map<String, dynamic> json) {
  return _CatalogFacetsDto.fromJson(json);
}

/// @nodoc
mixin _$CatalogFacetsDto {
  @JsonKey(name: 'categories')
  List<CategoryFacetTreeNodeDto> get categories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  List<AttributeFacetItemDto> get attributes =>
      throw _privateConstructorUsedError;

  /// Serializes this CatalogFacetsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatalogFacetsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatalogFacetsDtoCopyWith<CatalogFacetsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogFacetsDtoCopyWith<$Res> {
  factory $CatalogFacetsDtoCopyWith(
    CatalogFacetsDto value,
    $Res Function(CatalogFacetsDto) then,
  ) = _$CatalogFacetsDtoCopyWithImpl<$Res, CatalogFacetsDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'categories') List<CategoryFacetTreeNodeDto> categories,
    @JsonKey(name: 'attributes') List<AttributeFacetItemDto> attributes,
  });
}

/// @nodoc
class _$CatalogFacetsDtoCopyWithImpl<$Res, $Val extends CatalogFacetsDto>
    implements $CatalogFacetsDtoCopyWith<$Res> {
  _$CatalogFacetsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatalogFacetsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? attributes = null}) {
    return _then(
      _value.copyWith(
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryFacetTreeNodeDto>,
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<AttributeFacetItemDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CatalogFacetsDtoImplCopyWith<$Res>
    implements $CatalogFacetsDtoCopyWith<$Res> {
  factory _$$CatalogFacetsDtoImplCopyWith(
    _$CatalogFacetsDtoImpl value,
    $Res Function(_$CatalogFacetsDtoImpl) then,
  ) = __$$CatalogFacetsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'categories') List<CategoryFacetTreeNodeDto> categories,
    @JsonKey(name: 'attributes') List<AttributeFacetItemDto> attributes,
  });
}

/// @nodoc
class __$$CatalogFacetsDtoImplCopyWithImpl<$Res>
    extends _$CatalogFacetsDtoCopyWithImpl<$Res, _$CatalogFacetsDtoImpl>
    implements _$$CatalogFacetsDtoImplCopyWith<$Res> {
  __$$CatalogFacetsDtoImplCopyWithImpl(
    _$CatalogFacetsDtoImpl _value,
    $Res Function(_$CatalogFacetsDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CatalogFacetsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categories = null, Object? attributes = null}) {
    return _then(
      _$CatalogFacetsDtoImpl(
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryFacetTreeNodeDto>,
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<AttributeFacetItemDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogFacetsDtoImpl implements _CatalogFacetsDto {
  const _$CatalogFacetsDtoImpl({
    @JsonKey(name: 'categories')
    final List<CategoryFacetTreeNodeDto> categories = const [],
    @JsonKey(name: 'attributes')
    final List<AttributeFacetItemDto> attributes = const [],
  }) : _categories = categories,
       _attributes = attributes;

  factory _$CatalogFacetsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogFacetsDtoImplFromJson(json);

  final List<CategoryFacetTreeNodeDto> _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryFacetTreeNodeDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<AttributeFacetItemDto> _attributes;
  @override
  @JsonKey(name: 'attributes')
  List<AttributeFacetItemDto> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  @override
  String toString() {
    return 'CatalogFacetsDto(categories: $categories, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogFacetsDtoImpl &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_attributes),
  );

  /// Create a copy of CatalogFacetsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogFacetsDtoImplCopyWith<_$CatalogFacetsDtoImpl> get copyWith =>
      __$$CatalogFacetsDtoImplCopyWithImpl<_$CatalogFacetsDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogFacetsDtoImplToJson(this);
  }
}

abstract class _CatalogFacetsDto implements CatalogFacetsDto {
  const factory _CatalogFacetsDto({
    @JsonKey(name: 'categories')
    final List<CategoryFacetTreeNodeDto> categories,
    @JsonKey(name: 'attributes') final List<AttributeFacetItemDto> attributes,
  }) = _$CatalogFacetsDtoImpl;

  factory _CatalogFacetsDto.fromJson(Map<String, dynamic> json) =
      _$CatalogFacetsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'categories')
  List<CategoryFacetTreeNodeDto> get categories;
  @override
  @JsonKey(name: 'attributes')
  List<AttributeFacetItemDto> get attributes;

  /// Create a copy of CatalogFacetsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatalogFacetsDtoImplCopyWith<_$CatalogFacetsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

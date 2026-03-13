// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_facet_tree_node_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryFacetTreeNodeDto _$CategoryFacetTreeNodeDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryFacetTreeNodeDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryFacetTreeNodeDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  List<CategoryFacetTreeNodeDto> get children =>
      throw _privateConstructorUsedError;

  /// Serializes this CategoryFacetTreeNodeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryFacetTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryFacetTreeNodeDtoCopyWith<CategoryFacetTreeNodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFacetTreeNodeDtoCopyWith<$Res> {
  factory $CategoryFacetTreeNodeDtoCopyWith(
    CategoryFacetTreeNodeDto value,
    $Res Function(CategoryFacetTreeNodeDto) then,
  ) = _$CategoryFacetTreeNodeDtoCopyWithImpl<$Res, CategoryFacetTreeNodeDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'children') List<CategoryFacetTreeNodeDto> children,
  });
}

/// @nodoc
class _$CategoryFacetTreeNodeDtoCopyWithImpl<
  $Res,
  $Val extends CategoryFacetTreeNodeDto
>
    implements $CategoryFacetTreeNodeDtoCopyWith<$Res> {
  _$CategoryFacetTreeNodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryFacetTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? count = null,
    Object? children = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            children: null == children
                ? _value.children
                : children // ignore: cast_nullable_to_non_nullable
                      as List<CategoryFacetTreeNodeDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryFacetTreeNodeDtoImplCopyWith<$Res>
    implements $CategoryFacetTreeNodeDtoCopyWith<$Res> {
  factory _$$CategoryFacetTreeNodeDtoImplCopyWith(
    _$CategoryFacetTreeNodeDtoImpl value,
    $Res Function(_$CategoryFacetTreeNodeDtoImpl) then,
  ) = __$$CategoryFacetTreeNodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'count') int count,
    @JsonKey(name: 'children') List<CategoryFacetTreeNodeDto> children,
  });
}

/// @nodoc
class __$$CategoryFacetTreeNodeDtoImplCopyWithImpl<$Res>
    extends
        _$CategoryFacetTreeNodeDtoCopyWithImpl<
          $Res,
          _$CategoryFacetTreeNodeDtoImpl
        >
    implements _$$CategoryFacetTreeNodeDtoImplCopyWith<$Res> {
  __$$CategoryFacetTreeNodeDtoImplCopyWithImpl(
    _$CategoryFacetTreeNodeDtoImpl _value,
    $Res Function(_$CategoryFacetTreeNodeDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryFacetTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? count = null,
    Object? children = null,
  }) {
    return _then(
      _$CategoryFacetTreeNodeDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        children: null == children
            ? _value._children
            : children // ignore: cast_nullable_to_non_nullable
                  as List<CategoryFacetTreeNodeDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryFacetTreeNodeDtoImpl implements _CategoryFacetTreeNodeDto {
  const _$CategoryFacetTreeNodeDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'slug') required this.slug,
    @JsonKey(name: 'count') this.count = 0,
    @JsonKey(name: 'children')
    final List<CategoryFacetTreeNodeDto> children = const [],
  }) : _children = children;

  factory _$CategoryFacetTreeNodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryFacetTreeNodeDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'slug')
  final String slug;
  @override
  @JsonKey(name: 'count')
  final int count;
  final List<CategoryFacetTreeNodeDto> _children;
  @override
  @JsonKey(name: 'children')
  List<CategoryFacetTreeNodeDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoryFacetTreeNodeDto(id: $id, name: $name, slug: $slug, count: $count, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryFacetTreeNodeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    count,
    const DeepCollectionEquality().hash(_children),
  );

  /// Create a copy of CategoryFacetTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryFacetTreeNodeDtoImplCopyWith<_$CategoryFacetTreeNodeDtoImpl>
  get copyWith =>
      __$$CategoryFacetTreeNodeDtoImplCopyWithImpl<
        _$CategoryFacetTreeNodeDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryFacetTreeNodeDtoImplToJson(this);
  }
}

abstract class _CategoryFacetTreeNodeDto implements CategoryFacetTreeNodeDto {
  const factory _CategoryFacetTreeNodeDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'slug') required final String slug,
    @JsonKey(name: 'count') final int count,
    @JsonKey(name: 'children') final List<CategoryFacetTreeNodeDto> children,
  }) = _$CategoryFacetTreeNodeDtoImpl;

  factory _CategoryFacetTreeNodeDto.fromJson(Map<String, dynamic> json) =
      _$CategoryFacetTreeNodeDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'slug')
  String get slug;
  @override
  @JsonKey(name: 'count')
  int get count;
  @override
  @JsonKey(name: 'children')
  List<CategoryFacetTreeNodeDto> get children;

  /// Create a copy of CategoryFacetTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryFacetTreeNodeDtoImplCopyWith<_$CategoryFacetTreeNodeDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

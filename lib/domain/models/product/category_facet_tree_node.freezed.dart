// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_facet_tree_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CategoryFacetTreeNode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<CategoryFacetTreeNode> get children =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryFacetTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryFacetTreeNodeCopyWith<CategoryFacetTreeNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryFacetTreeNodeCopyWith<$Res> {
  factory $CategoryFacetTreeNodeCopyWith(
    CategoryFacetTreeNode value,
    $Res Function(CategoryFacetTreeNode) then,
  ) = _$CategoryFacetTreeNodeCopyWithImpl<$Res, CategoryFacetTreeNode>;
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    int count,
    List<CategoryFacetTreeNode> children,
  });
}

/// @nodoc
class _$CategoryFacetTreeNodeCopyWithImpl<
  $Res,
  $Val extends CategoryFacetTreeNode
>
    implements $CategoryFacetTreeNodeCopyWith<$Res> {
  _$CategoryFacetTreeNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryFacetTreeNode
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
                      as List<CategoryFacetTreeNode>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryFacetTreeNodeImplCopyWith<$Res>
    implements $CategoryFacetTreeNodeCopyWith<$Res> {
  factory _$$CategoryFacetTreeNodeImplCopyWith(
    _$CategoryFacetTreeNodeImpl value,
    $Res Function(_$CategoryFacetTreeNodeImpl) then,
  ) = __$$CategoryFacetTreeNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    int count,
    List<CategoryFacetTreeNode> children,
  });
}

/// @nodoc
class __$$CategoryFacetTreeNodeImplCopyWithImpl<$Res>
    extends
        _$CategoryFacetTreeNodeCopyWithImpl<$Res, _$CategoryFacetTreeNodeImpl>
    implements _$$CategoryFacetTreeNodeImplCopyWith<$Res> {
  __$$CategoryFacetTreeNodeImplCopyWithImpl(
    _$CategoryFacetTreeNodeImpl _value,
    $Res Function(_$CategoryFacetTreeNodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryFacetTreeNode
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
      _$CategoryFacetTreeNodeImpl(
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
                  as List<CategoryFacetTreeNode>,
      ),
    );
  }
}

/// @nodoc

class _$CategoryFacetTreeNodeImpl implements _CategoryFacetTreeNode {
  const _$CategoryFacetTreeNodeImpl({
    required this.id,
    required this.name,
    required this.slug,
    this.count = 0,
    final List<CategoryFacetTreeNode> children = const [],
  }) : _children = children;

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  @JsonKey()
  final int count;
  final List<CategoryFacetTreeNode> _children;
  @override
  @JsonKey()
  List<CategoryFacetTreeNode> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoryFacetTreeNode(id: $id, name: $name, slug: $slug, count: $count, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryFacetTreeNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    count,
    const DeepCollectionEquality().hash(_children),
  );

  /// Create a copy of CategoryFacetTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryFacetTreeNodeImplCopyWith<_$CategoryFacetTreeNodeImpl>
  get copyWith =>
      __$$CategoryFacetTreeNodeImplCopyWithImpl<_$CategoryFacetTreeNodeImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoryFacetTreeNode implements CategoryFacetTreeNode {
  const factory _CategoryFacetTreeNode({
    required final int id,
    required final String name,
    required final String slug,
    final int count,
    final List<CategoryFacetTreeNode> children,
  }) = _$CategoryFacetTreeNodeImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  int get count;
  @override
  List<CategoryFacetTreeNode> get children;

  /// Create a copy of CategoryFacetTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryFacetTreeNodeImplCopyWith<_$CategoryFacetTreeNodeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

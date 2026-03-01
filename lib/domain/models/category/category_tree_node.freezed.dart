// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tree_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CategoryTreeNode {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  CategoryType get type => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<CategoryTreeNode> get children => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTreeNodeCopyWith<CategoryTreeNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTreeNodeCopyWith<$Res> {
  factory $CategoryTreeNodeCopyWith(
    CategoryTreeNode value,
    $Res Function(CategoryTreeNode) then,
  ) = _$CategoryTreeNodeCopyWithImpl<$Res, CategoryTreeNode>;
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    CategoryType type,
    int? parentId,
    bool isActive,
    List<CategoryTreeNode> children,
  });
}

/// @nodoc
class _$CategoryTreeNodeCopyWithImpl<$Res, $Val extends CategoryTreeNode>
    implements $CategoryTreeNodeCopyWith<$Res> {
  _$CategoryTreeNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? isActive = null,
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
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as CategoryType,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            children: null == children
                ? _value.children
                : children // ignore: cast_nullable_to_non_nullable
                      as List<CategoryTreeNode>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryTreeNodeImplCopyWith<$Res>
    implements $CategoryTreeNodeCopyWith<$Res> {
  factory _$$CategoryTreeNodeImplCopyWith(
    _$CategoryTreeNodeImpl value,
    $Res Function(_$CategoryTreeNodeImpl) then,
  ) = __$$CategoryTreeNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    CategoryType type,
    int? parentId,
    bool isActive,
    List<CategoryTreeNode> children,
  });
}

/// @nodoc
class __$$CategoryTreeNodeImplCopyWithImpl<$Res>
    extends _$CategoryTreeNodeCopyWithImpl<$Res, _$CategoryTreeNodeImpl>
    implements _$$CategoryTreeNodeImplCopyWith<$Res> {
  __$$CategoryTreeNodeImplCopyWithImpl(
    _$CategoryTreeNodeImpl _value,
    $Res Function(_$CategoryTreeNodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? isActive = null,
    Object? children = null,
  }) {
    return _then(
      _$CategoryTreeNodeImpl(
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
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as CategoryType,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        children: null == children
            ? _value._children
            : children // ignore: cast_nullable_to_non_nullable
                  as List<CategoryTreeNode>,
      ),
    );
  }
}

/// @nodoc

class _$CategoryTreeNodeImpl implements _CategoryTreeNode {
  const _$CategoryTreeNodeImpl({
    required this.id,
    required this.name,
    required this.slug,
    required this.type,
    this.parentId,
    this.isActive = true,
    final List<CategoryTreeNode> children = const [],
  }) : _children = children;

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final CategoryType type;
  @override
  final int? parentId;
  @override
  @JsonKey()
  final bool isActive;
  final List<CategoryTreeNode> _children;
  @override
  @JsonKey()
  List<CategoryTreeNode> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'CategoryTreeNode(id: $id, name: $name, slug: $slug, type: $type, parentId: $parentId, isActive: $isActive, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTreeNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    type,
    parentId,
    isActive,
    const DeepCollectionEquality().hash(_children),
  );

  /// Create a copy of CategoryTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTreeNodeImplCopyWith<_$CategoryTreeNodeImpl> get copyWith =>
      __$$CategoryTreeNodeImplCopyWithImpl<_$CategoryTreeNodeImpl>(
        this,
        _$identity,
      );
}

abstract class _CategoryTreeNode implements CategoryTreeNode {
  const factory _CategoryTreeNode({
    required final int id,
    required final String name,
    required final String slug,
    required final CategoryType type,
    final int? parentId,
    final bool isActive,
    final List<CategoryTreeNode> children,
  }) = _$CategoryTreeNodeImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  CategoryType get type;
  @override
  int? get parentId;
  @override
  bool get isActive;
  @override
  List<CategoryTreeNode> get children;

  /// Create a copy of CategoryTreeNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTreeNodeImplCopyWith<_$CategoryTreeNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

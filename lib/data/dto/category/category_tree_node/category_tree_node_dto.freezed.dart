// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tree_node_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryTreeNodeDto _$CategoryTreeNodeDtoFromJson(Map<String, dynamic> json) {
  return _CategoryTreeNodeDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryTreeNodeDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  List<CategoryTreeNodeDto> get children => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryTreeNodeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTreeNodeDtoCopyWith<CategoryTreeNodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTreeNodeDtoCopyWith<$Res> {
  factory $CategoryTreeNodeDtoCopyWith(
    CategoryTreeNodeDto value,
    $Res Function(CategoryTreeNodeDto) then,
  ) = _$CategoryTreeNodeDtoCopyWithImpl<$Res, CategoryTreeNodeDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'children') List<CategoryTreeNodeDto> children,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryTreeNodeDtoCopyWithImpl<$Res, $Val extends CategoryTreeNodeDto>
    implements $CategoryTreeNodeDtoCopyWith<$Res> {
  _$CategoryTreeNodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? children = null,
    Object? message = freezed,
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
                      as CategoryTypeDto,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            children: null == children
                ? _value.children
                : children // ignore: cast_nullable_to_non_nullable
                      as List<CategoryTreeNodeDto>,
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
abstract class _$$CategoryTreeNodeDtoImplCopyWith<$Res>
    implements $CategoryTreeNodeDtoCopyWith<$Res> {
  factory _$$CategoryTreeNodeDtoImplCopyWith(
    _$CategoryTreeNodeDtoImpl value,
    $Res Function(_$CategoryTreeNodeDtoImpl) then,
  ) = __$$CategoryTreeNodeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'children') List<CategoryTreeNodeDto> children,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryTreeNodeDtoImplCopyWithImpl<$Res>
    extends _$CategoryTreeNodeDtoCopyWithImpl<$Res, _$CategoryTreeNodeDtoImpl>
    implements _$$CategoryTreeNodeDtoImplCopyWith<$Res> {
  __$$CategoryTreeNodeDtoImplCopyWithImpl(
    _$CategoryTreeNodeDtoImpl _value,
    $Res Function(_$CategoryTreeNodeDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? children = null,
    Object? message = freezed,
  }) {
    return _then(
      _$CategoryTreeNodeDtoImpl(
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
                  as CategoryTypeDto,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        children: null == children
            ? _value._children
            : children // ignore: cast_nullable_to_non_nullable
                  as List<CategoryTreeNodeDto>,
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
class _$CategoryTreeNodeDtoImpl implements _CategoryTreeNodeDto {
  const _$CategoryTreeNodeDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'slug') required this.slug,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'children')
    final List<CategoryTreeNodeDto> children = const [],
    @JsonKey(name: 'message') this.message,
  }) : _children = children;

  factory _$CategoryTreeNodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryTreeNodeDtoImplFromJson(json);

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
  @JsonKey(name: 'type')
  final CategoryTypeDto type;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  final List<CategoryTreeNodeDto> _children;
  @override
  @JsonKey(name: 'children')
  List<CategoryTreeNodeDto> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryTreeNodeDto(id: $id, name: $name, slug: $slug, type: $type, parentId: $parentId, imageUrl: $imageUrl, isActive: $isActive, children: $children, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTreeNodeDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    type,
    parentId,
    imageUrl,
    isActive,
    const DeepCollectionEquality().hash(_children),
    message,
  );

  /// Create a copy of CategoryTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTreeNodeDtoImplCopyWith<_$CategoryTreeNodeDtoImpl> get copyWith =>
      __$$CategoryTreeNodeDtoImplCopyWithImpl<_$CategoryTreeNodeDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryTreeNodeDtoImplToJson(this);
  }
}

abstract class _CategoryTreeNodeDto implements CategoryTreeNodeDto {
  const factory _CategoryTreeNodeDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'slug') required final String slug,
    @JsonKey(name: 'type') required final CategoryTypeDto type,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'children') final List<CategoryTreeNodeDto> children,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryTreeNodeDtoImpl;

  factory _CategoryTreeNodeDto.fromJson(Map<String, dynamic> json) =
      _$CategoryTreeNodeDtoImpl.fromJson;

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
  @JsonKey(name: 'type')
  CategoryTypeDto get type;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'children')
  List<CategoryTreeNodeDto> get children;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryTreeNodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTreeNodeDtoImplCopyWith<_$CategoryTreeNodeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

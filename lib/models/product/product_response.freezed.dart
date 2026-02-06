// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ProductType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new')
  bool get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hit')
  bool get isHit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryResponse get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponse> get attributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ProductImageResponse> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
    ProductResponse value,
    $Res Function(ProductResponse) then,
  ) = _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'category') CategoryResponse category,
    @JsonKey(name: 'attributes') List<ProductAttributeResponse> attributes,
    @JsonKey(name: 'images') List<ProductImageResponse> images,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });

  $CategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? category = null,
    Object? attributes = null,
    Object? images = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
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
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ProductType,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as String?,
            isNew: null == isNew
                ? _value.isNew
                : isNew // ignore: cast_nullable_to_non_nullable
                      as bool,
            isHit: null == isHit
                ? _value.isHit
                : isHit // ignore: cast_nullable_to_non_nullable
                      as bool,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as CategoryResponse,
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<ProductAttributeResponse>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProductImageResponse>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryResponseCopyWith<$Res> get category {
    return $CategoryResponseCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(
    _$ProductResponseImpl value,
    $Res Function(_$ProductResponseImpl) then,
  ) = __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'category') CategoryResponse category,
    @JsonKey(name: 'attributes') List<ProductAttributeResponse> attributes,
    @JsonKey(name: 'images') List<ProductImageResponse> images,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });

  @override
  $CategoryResponseCopyWith<$Res> get category;
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
    _$ProductResponseImpl _value,
    $Res Function(_$ProductResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? category = null,
    Object? attributes = null,
    Object? images = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ProductResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ProductType,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as String?,
        isNew: null == isNew
            ? _value.isNew
            : isNew // ignore: cast_nullable_to_non_nullable
                  as bool,
        isHit: null == isHit
            ? _value.isHit
            : isHit // ignore: cast_nullable_to_non_nullable
                  as bool,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as CategoryResponse,
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<ProductAttributeResponse>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProductImageResponse>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'is_new') this.isNew = false,
    @JsonKey(name: 'is_hit') this.isHit = false,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'category') required this.category,
    @JsonKey(name: 'attributes')
    final List<ProductAttributeResponse> attributes = const [],
    @JsonKey(name: 'images') final List<ProductImageResponse> images = const [],
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'message') this.message,
  }) : _attributes = attributes,
       _images = images;

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'type')
  final ProductType type;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'is_new')
  final bool isNew;
  @override
  @JsonKey(name: 'is_hit')
  final bool isHit;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'category')
  final CategoryResponse category;
  final List<ProductAttributeResponse> _attributes;
  @override
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponse> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<ProductImageResponse> _images;
  @override
  @JsonKey(name: 'images')
  List<ProductImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductResponse(id: $id, name: $name, categoryId: $categoryId, type: $type, slug: $slug, description: $description, price: $price, isNew: $isNew, isHit: $isHit, isActive: $isActive, category: $category, attributes: $attributes, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isHit, isHit) || other.isHit == isHit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    categoryId,
    type,
    slug,
    description,
    price,
    isNew,
    isHit,
    isActive,
    category,
    const DeepCollectionEquality().hash(_attributes),
    const DeepCollectionEquality().hash(_images),
    createdAt,
    updatedAt,
    message,
  );

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'type') required final ProductType type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final String? price,
    @JsonKey(name: 'is_new') final bool isNew,
    @JsonKey(name: 'is_hit') final bool isHit,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'category') required final CategoryResponse category,
    @JsonKey(name: 'attributes')
    final List<ProductAttributeResponse> attributes,
    @JsonKey(name: 'images') final List<ProductImageResponse> images,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'type')
  ProductType get type;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'is_new')
  bool get isNew;
  @override
  @JsonKey(name: 'is_hit')
  bool get isHit;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'category')
  CategoryResponse get category;
  @override
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponse> get attributes;
  @override
  @JsonKey(name: 'images')
  List<ProductImageResponse> get images;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

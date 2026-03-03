// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isHit => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<ProductAttribute> get attributes => throw _privateConstructorUsedError;
  List<ProductImage> get images => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  ProductDiscountInfo? get discount => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int id,
    String name,
    int categoryId,
    ProductType type,
    Category category,
    String createdAt,
    String? slug,
    String? description,
    String? price,
    bool isNew,
    bool isHit,
    bool isActive,
    List<ProductAttribute> attributes,
    List<ProductImage> images,
    String? updatedAt,
    ProductDiscountInfo? discount,
  });

  $CategoryCopyWith<$Res> get category;
  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? category = null,
    Object? createdAt = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? attributes = null,
    Object? images = null,
    Object? updatedAt = freezed,
    Object? discount = freezed,
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
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as Category,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
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
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<ProductAttribute>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProductImage>,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as ProductDiscountInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDiscountInfoCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $ProductDiscountInfoCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    int categoryId,
    ProductType type,
    Category category,
    String createdAt,
    String? slug,
    String? description,
    String? price,
    bool isNew,
    bool isHit,
    bool isActive,
    List<ProductAttribute> attributes,
    List<ProductImage> images,
    String? updatedAt,
    ProductDiscountInfo? discount,
  });

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? category = null,
    Object? createdAt = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? attributes = null,
    Object? images = null,
    Object? updatedAt = freezed,
    Object? discount = freezed,
  }) {
    return _then(
      _$ProductImpl(
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
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as Category,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
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
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<ProductAttribute>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProductImage>,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as ProductDiscountInfo?,
      ),
    );
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.type,
    required this.category,
    required this.createdAt,
    this.slug,
    this.description,
    this.price,
    this.isNew = false,
    this.isHit = false,
    this.isActive = true,
    final List<ProductAttribute> attributes = const [],
    final List<ProductImage> images = const [],
    this.updatedAt,
    this.discount,
  }) : _attributes = attributes,
       _images = images;

  @override
  final int id;
  @override
  final String name;
  @override
  final int categoryId;
  @override
  final ProductType type;
  @override
  final Category category;
  @override
  final String createdAt;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? price;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isHit;
  @override
  @JsonKey()
  final bool isActive;
  final List<ProductAttribute> _attributes;
  @override
  @JsonKey()
  List<ProductAttribute> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<ProductImage> _images;
  @override
  @JsonKey()
  List<ProductImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? updatedAt;
  @override
  final ProductDiscountInfo? discount;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, categoryId: $categoryId, type: $type, category: $category, createdAt: $createdAt, slug: $slug, description: $description, price: $price, isNew: $isNew, isHit: $isHit, isActive: $isActive, attributes: $attributes, images: $images, updatedAt: $updatedAt, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isHit, isHit) || other.isHit == isHit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    categoryId,
    type,
    category,
    createdAt,
    slug,
    description,
    price,
    isNew,
    isHit,
    isActive,
    const DeepCollectionEquality().hash(_attributes),
    const DeepCollectionEquality().hash(_images),
    updatedAt,
    discount,
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product({
    required final int id,
    required final String name,
    required final int categoryId,
    required final ProductType type,
    required final Category category,
    required final String createdAt,
    final String? slug,
    final String? description,
    final String? price,
    final bool isNew,
    final bool isHit,
    final bool isActive,
    final List<ProductAttribute> attributes,
    final List<ProductImage> images,
    final String? updatedAt,
    final ProductDiscountInfo? discount,
  }) = _$ProductImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get categoryId;
  @override
  ProductType get type;
  @override
  Category get category;
  @override
  String get createdAt;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  String? get price;
  @override
  bool get isNew;
  @override
  bool get isHit;
  @override
  bool get isActive;
  @override
  List<ProductAttribute> get attributes;
  @override
  List<ProductImage> get images;
  @override
  String? get updatedAt;
  @override
  ProductDiscountInfo? get discount;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

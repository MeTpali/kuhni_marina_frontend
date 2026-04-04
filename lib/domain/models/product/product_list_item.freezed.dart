// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductListItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isHit => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  ProductDiscountInfo? get discount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  /// Create a copy of ProductListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListItemCopyWith<ProductListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListItemCopyWith<$Res> {
  factory $ProductListItemCopyWith(
    ProductListItem value,
    $Res Function(ProductListItem) then,
  ) = _$ProductListItemCopyWithImpl<$Res, ProductListItem>;
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    int categoryId,
    ProductType type,
    String? categoryName,
    String? price,
    bool isNew,
    bool isHit,
    bool isActive,
    List<String> images,
    ProductDiscountInfo? discount,
    double rating,
    int reviewsCount,
    bool isFavourite,
  });

  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class _$ProductListItemCopyWithImpl<$Res, $Val extends ProductListItem>
    implements $ProductListItemCopyWith<$Res> {
  _$ProductListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? categoryId = null,
    Object? type = null,
    Object? categoryName = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? images = null,
    Object? discount = freezed,
    Object? rating = null,
    Object? reviewsCount = null,
    Object? isFavourite = null,
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
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as ProductType,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
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
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as ProductDiscountInfo?,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewsCount: null == reviewsCount
                ? _value.reviewsCount
                : reviewsCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isFavourite: null == isFavourite
                ? _value.isFavourite
                : isFavourite // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductListItem
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
abstract class _$$ProductListItemImplCopyWith<$Res>
    implements $ProductListItemCopyWith<$Res> {
  factory _$$ProductListItemImplCopyWith(
    _$ProductListItemImpl value,
    $Res Function(_$ProductListItemImpl) then,
  ) = __$$ProductListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String slug,
    int categoryId,
    ProductType type,
    String? categoryName,
    String? price,
    bool isNew,
    bool isHit,
    bool isActive,
    List<String> images,
    ProductDiscountInfo? discount,
    double rating,
    int reviewsCount,
    bool isFavourite,
  });

  @override
  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$ProductListItemImplCopyWithImpl<$Res>
    extends _$ProductListItemCopyWithImpl<$Res, _$ProductListItemImpl>
    implements _$$ProductListItemImplCopyWith<$Res> {
  __$$ProductListItemImplCopyWithImpl(
    _$ProductListItemImpl _value,
    $Res Function(_$ProductListItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? categoryId = null,
    Object? type = null,
    Object? categoryName = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? isActive = null,
    Object? images = null,
    Object? discount = freezed,
    Object? rating = null,
    Object? reviewsCount = null,
    Object? isFavourite = null,
  }) {
    return _then(
      _$ProductListItemImpl(
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
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as ProductType,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
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
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as ProductDiscountInfo?,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewsCount: null == reviewsCount
            ? _value.reviewsCount
            : reviewsCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isFavourite: null == isFavourite
            ? _value.isFavourite
            : isFavourite // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ProductListItemImpl implements _ProductListItem {
  const _$ProductListItemImpl({
    required this.id,
    required this.name,
    required this.slug,
    required this.categoryId,
    required this.type,
    this.categoryName,
    this.price,
    this.isNew = false,
    this.isHit = false,
    this.isActive = true,
    final List<String> images = const [],
    this.discount,
    this.rating = 0.0,
    this.reviewsCount = 0,
    this.isFavourite = false,
  }) : _images = images;

  @override
  final int id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final int categoryId;
  @override
  final ProductType type;
  @override
  final String? categoryName;
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
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final ProductDiscountInfo? discount;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final int reviewsCount;
  @override
  @JsonKey()
  final bool isFavourite;

  @override
  String toString() {
    return 'ProductListItem(id: $id, name: $name, slug: $slug, categoryId: $categoryId, type: $type, categoryName: $categoryName, price: $price, isNew: $isNew, isHit: $isHit, isActive: $isActive, images: $images, discount: $discount, rating: $rating, reviewsCount: $reviewsCount, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isHit, isHit) || other.isHit == isHit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    categoryId,
    type,
    categoryName,
    price,
    isNew,
    isHit,
    isActive,
    const DeepCollectionEquality().hash(_images),
    discount,
    rating,
    reviewsCount,
    isFavourite,
  );

  /// Create a copy of ProductListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListItemImplCopyWith<_$ProductListItemImpl> get copyWith =>
      __$$ProductListItemImplCopyWithImpl<_$ProductListItemImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductListItem implements ProductListItem {
  const factory _ProductListItem({
    required final int id,
    required final String name,
    required final String slug,
    required final int categoryId,
    required final ProductType type,
    final String? categoryName,
    final String? price,
    final bool isNew,
    final bool isHit,
    final bool isActive,
    final List<String> images,
    final ProductDiscountInfo? discount,
    final double rating,
    final int reviewsCount,
    final bool isFavourite,
  }) = _$ProductListItemImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  int get categoryId;
  @override
  ProductType get type;
  @override
  String? get categoryName;
  @override
  String? get price;
  @override
  bool get isNew;
  @override
  bool get isHit;
  @override
  bool get isActive;
  @override
  List<String> get images;
  @override
  ProductDiscountInfo? get discount;
  @override
  double get rating;
  @override
  int get reviewsCount;
  @override
  bool get isFavourite;

  /// Create a copy of ProductListItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListItemImplCopyWith<_$ProductListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

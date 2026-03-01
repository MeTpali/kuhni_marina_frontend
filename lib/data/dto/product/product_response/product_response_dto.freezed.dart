// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductResponseDto _$ProductResponseDtoFromJson(Map<String, dynamic> json) {
  return _ProductResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ProductTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryResponseDto get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponseDto> get attributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ProductImageResponseDto> get images =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseDtoCopyWith<ProductResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseDtoCopyWith<$Res> {
  factory $ProductResponseDtoCopyWith(
    ProductResponseDto value,
    $Res Function(ProductResponseDto) then,
  ) = _$ProductResponseDtoCopyWithImpl<$Res, ProductResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'category') CategoryResponseDto category,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'attributes') List<ProductAttributeResponseDto> attributes,
    @JsonKey(name: 'images') List<ProductImageResponseDto> images,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });

  $CategoryResponseDtoCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductResponseDtoCopyWithImpl<$Res, $Val extends ProductResponseDto>
    implements $ProductResponseDtoCopyWith<$Res> {
  _$ProductResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponseDto
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
                      as ProductTypeDto,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as CategoryResponseDto,
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
                      as List<ProductAttributeResponseDto>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProductImageResponseDto>,
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

  /// Create a copy of ProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryResponseDtoCopyWith<$Res> get category {
    return $CategoryResponseDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseDtoImplCopyWith<$Res>
    implements $ProductResponseDtoCopyWith<$Res> {
  factory _$$ProductResponseDtoImplCopyWith(
    _$ProductResponseDtoImpl value,
    $Res Function(_$ProductResponseDtoImpl) then,
  ) = __$$ProductResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'category') CategoryResponseDto category,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'attributes') List<ProductAttributeResponseDto> attributes,
    @JsonKey(name: 'images') List<ProductImageResponseDto> images,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'message') String? message,
  });

  @override
  $CategoryResponseDtoCopyWith<$Res> get category;
}

/// @nodoc
class __$$ProductResponseDtoImplCopyWithImpl<$Res>
    extends _$ProductResponseDtoCopyWithImpl<$Res, _$ProductResponseDtoImpl>
    implements _$$ProductResponseDtoImplCopyWith<$Res> {
  __$$ProductResponseDtoImplCopyWithImpl(
    _$ProductResponseDtoImpl _value,
    $Res Function(_$ProductResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductResponseDto
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
    Object? message = freezed,
  }) {
    return _then(
      _$ProductResponseDtoImpl(
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
                  as ProductTypeDto,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as CategoryResponseDto,
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
                  as List<ProductAttributeResponseDto>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProductImageResponseDto>,
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
class _$ProductResponseDtoImpl implements _ProductResponseDto {
  const _$ProductResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'category') required this.category,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'is_new') this.isNew = false,
    @JsonKey(name: 'is_hit') this.isHit = false,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'attributes')
    final List<ProductAttributeResponseDto> attributes = const [],
    @JsonKey(name: 'images')
    final List<ProductImageResponseDto> images = const [],
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'message') this.message,
  }) : _attributes = attributes,
       _images = images;

  factory _$ProductResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseDtoImplFromJson(json);

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
  final ProductTypeDto type;
  @override
  @JsonKey(name: 'category')
  final CategoryResponseDto category;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
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
  final List<ProductAttributeResponseDto> _attributes;
  @override
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponseDto> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<ProductImageResponseDto> _images;
  @override
  @JsonKey(name: 'images')
  List<ProductImageResponseDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductResponseDto(id: $id, name: $name, categoryId: $categoryId, type: $type, category: $category, createdAt: $createdAt, slug: $slug, description: $description, price: $price, isNew: $isNew, isHit: $isHit, isActive: $isActive, attributes: $attributes, images: $images, updatedAt: $updatedAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseDtoImpl &&
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
    message,
  );

  /// Create a copy of ProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseDtoImplCopyWith<_$ProductResponseDtoImpl> get copyWith =>
      __$$ProductResponseDtoImplCopyWithImpl<_$ProductResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseDtoImplToJson(this);
  }
}

abstract class _ProductResponseDto implements ProductResponseDto {
  const factory _ProductResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'type') required final ProductTypeDto type,
    @JsonKey(name: 'category') required final CategoryResponseDto category,
    @JsonKey(name: 'created_at') required final String createdAt,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final String? price,
    @JsonKey(name: 'is_new') final bool isNew,
    @JsonKey(name: 'is_hit') final bool isHit,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'attributes')
    final List<ProductAttributeResponseDto> attributes,
    @JsonKey(name: 'images') final List<ProductImageResponseDto> images,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductResponseDtoImpl;

  factory _ProductResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductResponseDtoImpl.fromJson;

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
  ProductTypeDto get type;
  @override
  @JsonKey(name: 'category')
  CategoryResponseDto get category;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
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
  @JsonKey(name: 'attributes')
  List<ProductAttributeResponseDto> get attributes;
  @override
  @JsonKey(name: 'images')
  List<ProductImageResponseDto> get images;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseDtoImplCopyWith<_$ProductResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

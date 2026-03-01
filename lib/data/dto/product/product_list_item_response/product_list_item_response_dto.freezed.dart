// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_item_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductListItemResponseDto _$ProductListItemResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductListItemResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductListItemResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ProductTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new')
  bool get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hit')
  bool get isHit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_image')
  String? get mainImage => throw _privateConstructorUsedError;

  /// Serializes this ProductListItemResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListItemResponseDtoCopyWith<ProductListItemResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListItemResponseDtoCopyWith<$Res> {
  factory $ProductListItemResponseDtoCopyWith(
    ProductListItemResponseDto value,
    $Res Function(ProductListItemResponseDto) then,
  ) =
      _$ProductListItemResponseDtoCopyWithImpl<
        $Res,
        ProductListItemResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'main_image') String? mainImage,
  });
}

/// @nodoc
class _$ProductListItemResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductListItemResponseDto
>
    implements $ProductListItemResponseDtoCopyWith<$Res> {
  _$ProductListItemResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListItemResponseDto
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
    Object? mainImage = freezed,
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
                      as ProductTypeDto,
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
            mainImage: freezed == mainImage
                ? _value.mainImage
                : mainImage // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductListItemResponseDtoImplCopyWith<$Res>
    implements $ProductListItemResponseDtoCopyWith<$Res> {
  factory _$$ProductListItemResponseDtoImplCopyWith(
    _$ProductListItemResponseDtoImpl value,
    $Res Function(_$ProductListItemResponseDtoImpl) then,
  ) = __$$ProductListItemResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'main_image') String? mainImage,
  });
}

/// @nodoc
class __$$ProductListItemResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductListItemResponseDtoCopyWithImpl<
          $Res,
          _$ProductListItemResponseDtoImpl
        >
    implements _$$ProductListItemResponseDtoImplCopyWith<$Res> {
  __$$ProductListItemResponseDtoImplCopyWithImpl(
    _$ProductListItemResponseDtoImpl _value,
    $Res Function(_$ProductListItemResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductListItemResponseDto
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
    Object? mainImage = freezed,
  }) {
    return _then(
      _$ProductListItemResponseDtoImpl(
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
                  as ProductTypeDto,
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
        mainImage: freezed == mainImage
            ? _value.mainImage
            : mainImage // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListItemResponseDtoImpl implements _ProductListItemResponseDto {
  const _$ProductListItemResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'slug') required this.slug,
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'category_name') this.categoryName,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'is_new') this.isNew = false,
    @JsonKey(name: 'is_hit') this.isHit = false,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'main_image') this.mainImage,
  });

  factory _$ProductListItemResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductListItemResponseDtoImplFromJson(json);

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
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'type')
  final ProductTypeDto type;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
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
  @JsonKey(name: 'main_image')
  final String? mainImage;

  @override
  String toString() {
    return 'ProductListItemResponseDto(id: $id, name: $name, slug: $slug, categoryId: $categoryId, type: $type, categoryName: $categoryName, price: $price, isNew: $isNew, isHit: $isHit, isActive: $isActive, mainImage: $mainImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListItemResponseDtoImpl &&
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
            (identical(other.mainImage, mainImage) ||
                other.mainImage == mainImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    mainImage,
  );

  /// Create a copy of ProductListItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListItemResponseDtoImplCopyWith<_$ProductListItemResponseDtoImpl>
  get copyWith =>
      __$$ProductListItemResponseDtoImplCopyWithImpl<
        _$ProductListItemResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListItemResponseDtoImplToJson(this);
  }
}

abstract class _ProductListItemResponseDto
    implements ProductListItemResponseDto {
  const factory _ProductListItemResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'slug') required final String slug,
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'type') required final ProductTypeDto type,
    @JsonKey(name: 'category_name') final String? categoryName,
    @JsonKey(name: 'price') final String? price,
    @JsonKey(name: 'is_new') final bool isNew,
    @JsonKey(name: 'is_hit') final bool isHit,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'main_image') final String? mainImage,
  }) = _$ProductListItemResponseDtoImpl;

  factory _ProductListItemResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductListItemResponseDtoImpl.fromJson;

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
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'type')
  ProductTypeDto get type;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
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
  @JsonKey(name: 'main_image')
  String? get mainImage;

  /// Create a copy of ProductListItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListItemResponseDtoImplCopyWith<_$ProductListItemResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

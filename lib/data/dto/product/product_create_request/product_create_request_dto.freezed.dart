// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductCreateRequestDto _$ProductCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProductCreateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  ProductTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  Object? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_new')
  bool get isNew => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hit')
  bool get isHit => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  List<Map<String, dynamic>> get attributes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<Map<String, dynamic>> get images => throw _privateConstructorUsedError;

  /// Serializes this ProductCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCreateRequestDtoCopyWith<ProductCreateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCreateRequestDtoCopyWith<$Res> {
  factory $ProductCreateRequestDtoCopyWith(
    ProductCreateRequestDto value,
    $Res Function(ProductCreateRequestDto) then,
  ) = _$ProductCreateRequestDtoCopyWithImpl<$Res, ProductCreateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'attributes') List<Map<String, dynamic>> attributes,
    @JsonKey(name: 'images') List<Map<String, dynamic>> images,
  });
}

/// @nodoc
class _$ProductCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProductCreateRequestDto
>
    implements $ProductCreateRequestDtoCopyWith<$Res> {
  _$ProductCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? attributes = null,
    Object? images = null,
  }) {
    return _then(
      _value.copyWith(
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
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price ? _value.price : price,
            isNew: null == isNew
                ? _value.isNew
                : isNew // ignore: cast_nullable_to_non_nullable
                      as bool,
            isHit: null == isHit
                ? _value.isHit
                : isHit // ignore: cast_nullable_to_non_nullable
                      as bool,
            attributes: null == attributes
                ? _value.attributes
                : attributes // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductCreateRequestDtoImplCopyWith<$Res>
    implements $ProductCreateRequestDtoCopyWith<$Res> {
  factory _$$ProductCreateRequestDtoImplCopyWith(
    _$ProductCreateRequestDtoImpl value,
    $Res Function(_$ProductCreateRequestDtoImpl) then,
  ) = __$$ProductCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'type') ProductTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') Object? price,
    @JsonKey(name: 'is_new') bool isNew,
    @JsonKey(name: 'is_hit') bool isHit,
    @JsonKey(name: 'attributes') List<Map<String, dynamic>> attributes,
    @JsonKey(name: 'images') List<Map<String, dynamic>> images,
  });
}

/// @nodoc
class __$$ProductCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProductCreateRequestDtoCopyWithImpl<
          $Res,
          _$ProductCreateRequestDtoImpl
        >
    implements _$$ProductCreateRequestDtoImplCopyWith<$Res> {
  __$$ProductCreateRequestDtoImplCopyWithImpl(
    _$ProductCreateRequestDtoImpl _value,
    $Res Function(_$ProductCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? categoryId = null,
    Object? type = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? isNew = null,
    Object? isHit = null,
    Object? attributes = null,
    Object? images = null,
  }) {
    return _then(
      _$ProductCreateRequestDtoImpl(
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
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price ? _value.price : price,
        isNew: null == isNew
            ? _value.isNew
            : isNew // ignore: cast_nullable_to_non_nullable
                  as bool,
        isHit: null == isHit
            ? _value.isHit
            : isHit // ignore: cast_nullable_to_non_nullable
                  as bool,
        attributes: null == attributes
            ? _value._attributes
            : attributes // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCreateRequestDtoImpl implements _ProductCreateRequestDto {
  const _$ProductCreateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'is_new') this.isNew = false,
    @JsonKey(name: 'is_hit') this.isHit = false,
    @JsonKey(name: 'attributes')
    final List<Map<String, dynamic>> attributes = const [],
    @JsonKey(name: 'images') final List<Map<String, dynamic>> images = const [],
  }) : _attributes = attributes,
       _images = images;

  factory _$ProductCreateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCreateRequestDtoImplFromJson(json);

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
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final Object? price;
  @override
  @JsonKey(name: 'is_new')
  final bool isNew;
  @override
  @JsonKey(name: 'is_hit')
  final bool isHit;
  final List<Map<String, dynamic>> _attributes;
  @override
  @JsonKey(name: 'attributes')
  List<Map<String, dynamic>> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<Map<String, dynamic>> _images;
  @override
  @JsonKey(name: 'images')
  List<Map<String, dynamic>> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductCreateRequestDto(name: $name, categoryId: $categoryId, type: $type, slug: $slug, description: $description, price: $price, isNew: $isNew, isHit: $isHit, attributes: $attributes, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCreateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isHit, isHit) || other.isHit == isHit) &&
            const DeepCollectionEquality().equals(
              other._attributes,
              _attributes,
            ) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    categoryId,
    type,
    slug,
    description,
    const DeepCollectionEquality().hash(price),
    isNew,
    isHit,
    const DeepCollectionEquality().hash(_attributes),
    const DeepCollectionEquality().hash(_images),
  );

  /// Create a copy of ProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCreateRequestDtoImplCopyWith<_$ProductCreateRequestDtoImpl>
  get copyWith =>
      __$$ProductCreateRequestDtoImplCopyWithImpl<
        _$ProductCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCreateRequestDtoImplToJson(this);
  }
}

abstract class _ProductCreateRequestDto implements ProductCreateRequestDto {
  const factory _ProductCreateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'type') required final ProductTypeDto type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final Object? price,
    @JsonKey(name: 'is_new') final bool isNew,
    @JsonKey(name: 'is_hit') final bool isHit,
    @JsonKey(name: 'attributes') final List<Map<String, dynamic>> attributes,
    @JsonKey(name: 'images') final List<Map<String, dynamic>> images,
  }) = _$ProductCreateRequestDtoImpl;

  factory _ProductCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$ProductCreateRequestDtoImpl.fromJson;

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
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  Object? get price;
  @override
  @JsonKey(name: 'is_new')
  bool get isNew;
  @override
  @JsonKey(name: 'is_hit')
  bool get isHit;
  @override
  @JsonKey(name: 'attributes')
  List<Map<String, dynamic>> get attributes;
  @override
  @JsonKey(name: 'images')
  List<Map<String, dynamic>> get images;

  /// Create a copy of ProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCreateRequestDtoImplCopyWith<_$ProductCreateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductCreateRequest {
  String get name => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  ProductType get type => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Object? get price => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isHit => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get attributes =>
      throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get images => throw _privateConstructorUsedError;

  /// Create a copy of ProductCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCreateRequestCopyWith<ProductCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCreateRequestCopyWith<$Res> {
  factory $ProductCreateRequestCopyWith(
    ProductCreateRequest value,
    $Res Function(ProductCreateRequest) then,
  ) = _$ProductCreateRequestCopyWithImpl<$Res, ProductCreateRequest>;
  @useResult
  $Res call({
    String name,
    int categoryId,
    ProductType type,
    String? slug,
    String? description,
    Object? price,
    bool isNew,
    bool isHit,
    List<Map<String, dynamic>> attributes,
    List<Map<String, dynamic>> images,
  });
}

/// @nodoc
class _$ProductCreateRequestCopyWithImpl<
  $Res,
  $Val extends ProductCreateRequest
>
    implements $ProductCreateRequestCopyWith<$Res> {
  _$ProductCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCreateRequest
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
                      as ProductType,
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
abstract class _$$ProductCreateRequestImplCopyWith<$Res>
    implements $ProductCreateRequestCopyWith<$Res> {
  factory _$$ProductCreateRequestImplCopyWith(
    _$ProductCreateRequestImpl value,
    $Res Function(_$ProductCreateRequestImpl) then,
  ) = __$$ProductCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int categoryId,
    ProductType type,
    String? slug,
    String? description,
    Object? price,
    bool isNew,
    bool isHit,
    List<Map<String, dynamic>> attributes,
    List<Map<String, dynamic>> images,
  });
}

/// @nodoc
class __$$ProductCreateRequestImplCopyWithImpl<$Res>
    extends _$ProductCreateRequestCopyWithImpl<$Res, _$ProductCreateRequestImpl>
    implements _$$ProductCreateRequestImplCopyWith<$Res> {
  __$$ProductCreateRequestImplCopyWithImpl(
    _$ProductCreateRequestImpl _value,
    $Res Function(_$ProductCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductCreateRequest
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
      _$ProductCreateRequestImpl(
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

class _$ProductCreateRequestImpl implements _ProductCreateRequest {
  const _$ProductCreateRequestImpl({
    required this.name,
    required this.categoryId,
    required this.type,
    this.slug,
    this.description,
    this.price,
    this.isNew = false,
    this.isHit = false,
    final List<Map<String, dynamic>> attributes = const [],
    final List<Map<String, dynamic>> images = const [],
  }) : _attributes = attributes,
       _images = images;

  @override
  final String name;
  @override
  final int categoryId;
  @override
  final ProductType type;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final Object? price;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isHit;
  final List<Map<String, dynamic>> _attributes;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get attributes {
    if (_attributes is EqualUnmodifiableListView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attributes);
  }

  final List<Map<String, dynamic>> _images;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductCreateRequest(name: $name, categoryId: $categoryId, type: $type, slug: $slug, description: $description, price: $price, isNew: $isNew, isHit: $isHit, attributes: $attributes, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCreateRequestImpl &&
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

  /// Create a copy of ProductCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCreateRequestImplCopyWith<_$ProductCreateRequestImpl>
  get copyWith =>
      __$$ProductCreateRequestImplCopyWithImpl<_$ProductCreateRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductCreateRequest implements ProductCreateRequest {
  const factory _ProductCreateRequest({
    required final String name,
    required final int categoryId,
    required final ProductType type,
    final String? slug,
    final String? description,
    final Object? price,
    final bool isNew,
    final bool isHit,
    final List<Map<String, dynamic>> attributes,
    final List<Map<String, dynamic>> images,
  }) = _$ProductCreateRequestImpl;

  @override
  String get name;
  @override
  int get categoryId;
  @override
  ProductType get type;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  Object? get price;
  @override
  bool get isNew;
  @override
  bool get isHit;
  @override
  List<Map<String, dynamic>> get attributes;
  @override
  List<Map<String, dynamic>> get images;

  /// Create a copy of ProductCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCreateRequestImplCopyWith<_$ProductCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

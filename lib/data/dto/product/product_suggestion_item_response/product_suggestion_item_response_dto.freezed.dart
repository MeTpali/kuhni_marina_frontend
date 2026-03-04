// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_suggestion_item_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductSuggestionItemResponseDto _$ProductSuggestionItemResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductSuggestionItemResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductSuggestionItemResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  ProductDiscountInfoDto? get discount => throw _privateConstructorUsedError;

  /// Serializes this ProductSuggestionItemResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSuggestionItemResponseDtoCopyWith<ProductSuggestionItemResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSuggestionItemResponseDtoCopyWith<$Res> {
  factory $ProductSuggestionItemResponseDtoCopyWith(
    ProductSuggestionItemResponseDto value,
    $Res Function(ProductSuggestionItemResponseDto) then,
  ) =
      _$ProductSuggestionItemResponseDtoCopyWithImpl<
        $Res,
        ProductSuggestionItemResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'discount') ProductDiscountInfoDto? discount,
  });

  $ProductDiscountInfoDtoCopyWith<$Res>? get discount;
}

/// @nodoc
class _$ProductSuggestionItemResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductSuggestionItemResponseDto
>
    implements $ProductSuggestionItemResponseDtoCopyWith<$Res> {
  _$ProductSuggestionItemResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? description = freezed,
    Object? price = freezed,
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
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as String?,
            discount: freezed == discount
                ? _value.discount
                : discount // ignore: cast_nullable_to_non_nullable
                      as ProductDiscountInfoDto?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDiscountInfoDtoCopyWith<$Res>? get discount {
    if (_value.discount == null) {
      return null;
    }

    return $ProductDiscountInfoDtoCopyWith<$Res>(_value.discount!, (value) {
      return _then(_value.copyWith(discount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductSuggestionItemResponseDtoImplCopyWith<$Res>
    implements $ProductSuggestionItemResponseDtoCopyWith<$Res> {
  factory _$$ProductSuggestionItemResponseDtoImplCopyWith(
    _$ProductSuggestionItemResponseDtoImpl value,
    $Res Function(_$ProductSuggestionItemResponseDtoImpl) then,
  ) = __$$ProductSuggestionItemResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'discount') ProductDiscountInfoDto? discount,
  });

  @override
  $ProductDiscountInfoDtoCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$ProductSuggestionItemResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductSuggestionItemResponseDtoCopyWithImpl<
          $Res,
          _$ProductSuggestionItemResponseDtoImpl
        >
    implements _$$ProductSuggestionItemResponseDtoImplCopyWith<$Res> {
  __$$ProductSuggestionItemResponseDtoImplCopyWithImpl(
    _$ProductSuggestionItemResponseDtoImpl _value,
    $Res Function(_$ProductSuggestionItemResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? discount = freezed,
  }) {
    return _then(
      _$ProductSuggestionItemResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as String?,
        discount: freezed == discount
            ? _value.discount
            : discount // ignore: cast_nullable_to_non_nullable
                  as ProductDiscountInfoDto?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSuggestionItemResponseDtoImpl
    implements _ProductSuggestionItemResponseDto {
  const _$ProductSuggestionItemResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'image') this.image,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'discount') this.discount,
  });

  factory _$ProductSuggestionItemResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductSuggestionItemResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final String? price;
  @override
  @JsonKey(name: 'discount')
  final ProductDiscountInfoDto? discount;

  @override
  String toString() {
    return 'ProductSuggestionItemResponseDto(id: $id, name: $name, image: $image, description: $description, price: $price, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSuggestionItemResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, description, price, discount);

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSuggestionItemResponseDtoImplCopyWith<
    _$ProductSuggestionItemResponseDtoImpl
  >
  get copyWith =>
      __$$ProductSuggestionItemResponseDtoImplCopyWithImpl<
        _$ProductSuggestionItemResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSuggestionItemResponseDtoImplToJson(this);
  }
}

abstract class _ProductSuggestionItemResponseDto
    implements ProductSuggestionItemResponseDto {
  const factory _ProductSuggestionItemResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'image') final String? image,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final String? price,
    @JsonKey(name: 'discount') final ProductDiscountInfoDto? discount,
  }) = _$ProductSuggestionItemResponseDtoImpl;

  factory _ProductSuggestionItemResponseDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ProductSuggestionItemResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  String? get price;
  @override
  @JsonKey(name: 'discount')
  ProductDiscountInfoDto? get discount;

  /// Create a copy of ProductSuggestionItemResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSuggestionItemResponseDtoImplCopyWith<
    _$ProductSuggestionItemResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

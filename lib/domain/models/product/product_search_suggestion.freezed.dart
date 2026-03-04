// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_search_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductSearchSuggestion {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  ProductDiscountInfo? get discount => throw _privateConstructorUsedError;

  /// Create a copy of ProductSearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSearchSuggestionCopyWith<ProductSearchSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSearchSuggestionCopyWith<$Res> {
  factory $ProductSearchSuggestionCopyWith(
    ProductSearchSuggestion value,
    $Res Function(ProductSearchSuggestion) then,
  ) = _$ProductSearchSuggestionCopyWithImpl<$Res, ProductSearchSuggestion>;
  @useResult
  $Res call({
    int id,
    String name,
    String? image,
    String? description,
    String? price,
    ProductDiscountInfo? discount,
  });

  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class _$ProductSearchSuggestionCopyWithImpl<
  $Res,
  $Val extends ProductSearchSuggestion
>
    implements $ProductSearchSuggestionCopyWith<$Res> {
  _$ProductSearchSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSearchSuggestion
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
                      as ProductDiscountInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProductSearchSuggestion
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
abstract class _$$ProductSearchSuggestionImplCopyWith<$Res>
    implements $ProductSearchSuggestionCopyWith<$Res> {
  factory _$$ProductSearchSuggestionImplCopyWith(
    _$ProductSearchSuggestionImpl value,
    $Res Function(_$ProductSearchSuggestionImpl) then,
  ) = __$$ProductSearchSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? image,
    String? description,
    String? price,
    ProductDiscountInfo? discount,
  });

  @override
  $ProductDiscountInfoCopyWith<$Res>? get discount;
}

/// @nodoc
class __$$ProductSearchSuggestionImplCopyWithImpl<$Res>
    extends
        _$ProductSearchSuggestionCopyWithImpl<
          $Res,
          _$ProductSearchSuggestionImpl
        >
    implements _$$ProductSearchSuggestionImplCopyWith<$Res> {
  __$$ProductSearchSuggestionImplCopyWithImpl(
    _$ProductSearchSuggestionImpl _value,
    $Res Function(_$ProductSearchSuggestionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductSearchSuggestion
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
      _$ProductSearchSuggestionImpl(
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
                  as ProductDiscountInfo?,
      ),
    );
  }
}

/// @nodoc

class _$ProductSearchSuggestionImpl implements _ProductSearchSuggestion {
  const _$ProductSearchSuggestionImpl({
    required this.id,
    required this.name,
    this.image,
    this.description,
    this.price,
    this.discount,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final ProductDiscountInfo? discount;

  @override
  String toString() {
    return 'ProductSearchSuggestion(id: $id, name: $name, image: $image, description: $description, price: $price, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSearchSuggestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, description, price, discount);

  /// Create a copy of ProductSearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSearchSuggestionImplCopyWith<_$ProductSearchSuggestionImpl>
  get copyWith =>
      __$$ProductSearchSuggestionImplCopyWithImpl<
        _$ProductSearchSuggestionImpl
      >(this, _$identity);
}

abstract class _ProductSearchSuggestion implements ProductSearchSuggestion {
  const factory _ProductSearchSuggestion({
    required final int id,
    required final String name,
    final String? image,
    final String? description,
    final String? price,
    final ProductDiscountInfo? discount,
  }) = _$ProductSearchSuggestionImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String? get price;
  @override
  ProductDiscountInfo? get discount;

  /// Create a copy of ProductSearchSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSearchSuggestionImplCopyWith<_$ProductSearchSuggestionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

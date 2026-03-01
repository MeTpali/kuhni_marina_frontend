// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageCreateRequestDto _$ProductImageCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProductImageCreateRequestDto {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main')
  bool? get isMain => throw _privateConstructorUsedError;

  /// Serializes this ProductImageCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCreateRequestDtoCopyWith<ProductImageCreateRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCreateRequestDtoCopyWith<$Res> {
  factory $ProductImageCreateRequestDtoCopyWith(
    ProductImageCreateRequestDto value,
    $Res Function(ProductImageCreateRequestDto) then,
  ) =
      _$ProductImageCreateRequestDtoCopyWithImpl<
        $Res,
        ProductImageCreateRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
  });
}

/// @nodoc
class _$ProductImageCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProductImageCreateRequestDto
>
    implements $ProductImageCreateRequestDtoCopyWith<$Res> {
  _$ProductImageCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            isMain: freezed == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImageCreateRequestDtoImplCopyWith<$Res>
    implements $ProductImageCreateRequestDtoCopyWith<$Res> {
  factory _$$ProductImageCreateRequestDtoImplCopyWith(
    _$ProductImageCreateRequestDtoImpl value,
    $Res Function(_$ProductImageCreateRequestDtoImpl) then,
  ) = __$$ProductImageCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
  });
}

/// @nodoc
class __$$ProductImageCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProductImageCreateRequestDtoCopyWithImpl<
          $Res,
          _$ProductImageCreateRequestDtoImpl
        >
    implements _$$ProductImageCreateRequestDtoImplCopyWith<$Res> {
  __$$ProductImageCreateRequestDtoImplCopyWithImpl(
    _$ProductImageCreateRequestDtoImpl _value,
    $Res Function(_$ProductImageCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
  }) {
    return _then(
      _$ProductImageCreateRequestDtoImpl(
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        isMain: freezed == isMain
            ? _value.isMain
            : isMain // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageCreateRequestDtoImpl
    implements _ProductImageCreateRequestDto {
  const _$ProductImageCreateRequestDtoImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'is_main') this.isMain = false,
  });

  factory _$ProductImageCreateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductImageCreateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'is_main')
  final bool? isMain;

  @override
  String toString() {
    return 'ProductImageCreateRequestDto(productId: $productId, imageUrl: $imageUrl, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageCreateRequestDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, imageUrl, isMain);

  /// Create a copy of ProductImageCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageCreateRequestDtoImplCopyWith<
    _$ProductImageCreateRequestDtoImpl
  >
  get copyWith =>
      __$$ProductImageCreateRequestDtoImplCopyWithImpl<
        _$ProductImageCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageCreateRequestDtoImplToJson(this);
  }
}

abstract class _ProductImageCreateRequestDto
    implements ProductImageCreateRequestDto {
  const factory _ProductImageCreateRequestDto({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'is_main') final bool? isMain,
  }) = _$ProductImageCreateRequestDtoImpl;

  factory _ProductImageCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$ProductImageCreateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'is_main')
  bool? get isMain;

  /// Create a copy of ProductImageCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageCreateRequestDtoImplCopyWith<
    _$ProductImageCreateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

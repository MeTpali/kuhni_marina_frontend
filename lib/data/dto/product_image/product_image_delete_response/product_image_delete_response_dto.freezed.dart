// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageDeleteResponseDto _$ProductImageDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductImageDeleteResponseDto {
  @JsonKey(name: 'product_image_id')
  int get productImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductImageDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageDeleteResponseDtoCopyWith<ProductImageDeleteResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageDeleteResponseDtoCopyWith<$Res> {
  factory $ProductImageDeleteResponseDtoCopyWith(
    ProductImageDeleteResponseDto value,
    $Res Function(ProductImageDeleteResponseDto) then,
  ) =
      _$ProductImageDeleteResponseDtoCopyWithImpl<
        $Res,
        ProductImageDeleteResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_image_id') int productImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductImageDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductImageDeleteResponseDto
>
    implements $ProductImageDeleteResponseDtoCopyWith<$Res> {
  _$ProductImageDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productImageId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            productImageId: null == productImageId
                ? _value.productImageId
                : productImageId // ignore: cast_nullable_to_non_nullable
                      as int,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImageDeleteResponseDtoImplCopyWith<$Res>
    implements $ProductImageDeleteResponseDtoCopyWith<$Res> {
  factory _$$ProductImageDeleteResponseDtoImplCopyWith(
    _$ProductImageDeleteResponseDtoImpl value,
    $Res Function(_$ProductImageDeleteResponseDtoImpl) then,
  ) = __$$ProductImageDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_image_id') int productImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductImageDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductImageDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ProductImageDeleteResponseDtoImpl
        >
    implements _$$ProductImageDeleteResponseDtoImplCopyWith<$Res> {
  __$$ProductImageDeleteResponseDtoImplCopyWithImpl(
    _$ProductImageDeleteResponseDtoImpl _value,
    $Res Function(_$ProductImageDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productImageId = null, Object? message = freezed}) {
    return _then(
      _$ProductImageDeleteResponseDtoImpl(
        productImageId: null == productImageId
            ? _value.productImageId
            : productImageId // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$ProductImageDeleteResponseDtoImpl
    implements _ProductImageDeleteResponseDto {
  const _$ProductImageDeleteResponseDtoImpl({
    @JsonKey(name: 'product_image_id') required this.productImageId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductImageDeleteResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductImageDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_image_id')
  final int productImageId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductImageDeleteResponseDto(productImageId: $productImageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageDeleteResponseDtoImpl &&
            (identical(other.productImageId, productImageId) ||
                other.productImageId == productImageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productImageId, message);

  /// Create a copy of ProductImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageDeleteResponseDtoImplCopyWith<
    _$ProductImageDeleteResponseDtoImpl
  >
  get copyWith =>
      __$$ProductImageDeleteResponseDtoImplCopyWithImpl<
        _$ProductImageDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ProductImageDeleteResponseDto
    implements ProductImageDeleteResponseDto {
  const factory _ProductImageDeleteResponseDto({
    @JsonKey(name: 'product_image_id') required final int productImageId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductImageDeleteResponseDtoImpl;

  factory _ProductImageDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductImageDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_image_id')
  int get productImageId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageDeleteResponseDtoImplCopyWith<
    _$ProductImageDeleteResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

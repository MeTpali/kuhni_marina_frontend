// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_favorite_mutation_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductFavoriteMutationResponseDto _$ProductFavoriteMutationResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductFavoriteMutationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductFavoriteMutationResponseDto {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductFavoriteMutationResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductFavoriteMutationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductFavoriteMutationResponseDtoCopyWith<
    ProductFavoriteMutationResponseDto
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFavoriteMutationResponseDtoCopyWith<$Res> {
  factory $ProductFavoriteMutationResponseDtoCopyWith(
    ProductFavoriteMutationResponseDto value,
    $Res Function(ProductFavoriteMutationResponseDto) then,
  ) =
      _$ProductFavoriteMutationResponseDtoCopyWithImpl<
        $Res,
        ProductFavoriteMutationResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductFavoriteMutationResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductFavoriteMutationResponseDto
>
    implements $ProductFavoriteMutationResponseDtoCopyWith<$Res> {
  _$ProductFavoriteMutationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductFavoriteMutationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductFavoriteMutationResponseDtoImplCopyWith<$Res>
    implements $ProductFavoriteMutationResponseDtoCopyWith<$Res> {
  factory _$$ProductFavoriteMutationResponseDtoImplCopyWith(
    _$ProductFavoriteMutationResponseDtoImpl value,
    $Res Function(_$ProductFavoriteMutationResponseDtoImpl) then,
  ) = __$$ProductFavoriteMutationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductFavoriteMutationResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductFavoriteMutationResponseDtoCopyWithImpl<
          $Res,
          _$ProductFavoriteMutationResponseDtoImpl
        >
    implements _$$ProductFavoriteMutationResponseDtoImplCopyWith<$Res> {
  __$$ProductFavoriteMutationResponseDtoImplCopyWithImpl(
    _$ProductFavoriteMutationResponseDtoImpl _value,
    $Res Function(_$ProductFavoriteMutationResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductFavoriteMutationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? message = freezed}) {
    return _then(
      _$ProductFavoriteMutationResponseDtoImpl(
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
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
class _$ProductFavoriteMutationResponseDtoImpl
    implements _ProductFavoriteMutationResponseDto {
  const _$ProductFavoriteMutationResponseDtoImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductFavoriteMutationResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductFavoriteMutationResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductFavoriteMutationResponseDto(productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFavoriteMutationResponseDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, message);

  /// Create a copy of ProductFavoriteMutationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFavoriteMutationResponseDtoImplCopyWith<
    _$ProductFavoriteMutationResponseDtoImpl
  >
  get copyWith =>
      __$$ProductFavoriteMutationResponseDtoImplCopyWithImpl<
        _$ProductFavoriteMutationResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductFavoriteMutationResponseDtoImplToJson(this);
  }
}

abstract class _ProductFavoriteMutationResponseDto
    implements ProductFavoriteMutationResponseDto {
  const factory _ProductFavoriteMutationResponseDto({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductFavoriteMutationResponseDtoImpl;

  factory _ProductFavoriteMutationResponseDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ProductFavoriteMutationResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductFavoriteMutationResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductFavoriteMutationResponseDtoImplCopyWith<
    _$ProductFavoriteMutationResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

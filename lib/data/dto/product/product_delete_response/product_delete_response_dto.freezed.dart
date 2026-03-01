// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductDeleteResponseDto _$ProductDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDeleteResponseDto {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDeleteResponseDtoCopyWith<ProductDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeleteResponseDtoCopyWith<$Res> {
  factory $ProductDeleteResponseDtoCopyWith(
    ProductDeleteResponseDto value,
    $Res Function(ProductDeleteResponseDto) then,
  ) = _$ProductDeleteResponseDtoCopyWithImpl<$Res, ProductDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductDeleteResponseDto
>
    implements $ProductDeleteResponseDtoCopyWith<$Res> {
  _$ProductDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDeleteResponseDto
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
abstract class _$$ProductDeleteResponseDtoImplCopyWith<$Res>
    implements $ProductDeleteResponseDtoCopyWith<$Res> {
  factory _$$ProductDeleteResponseDtoImplCopyWith(
    _$ProductDeleteResponseDtoImpl value,
    $Res Function(_$ProductDeleteResponseDtoImpl) then,
  ) = __$$ProductDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ProductDeleteResponseDtoImpl
        >
    implements _$$ProductDeleteResponseDtoImplCopyWith<$Res> {
  __$$ProductDeleteResponseDtoImplCopyWithImpl(
    _$ProductDeleteResponseDtoImpl _value,
    $Res Function(_$ProductDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? message = freezed}) {
    return _then(
      _$ProductDeleteResponseDtoImpl(
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
class _$ProductDeleteResponseDtoImpl implements _ProductDeleteResponseDto {
  const _$ProductDeleteResponseDtoImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductDeleteResponseDto(productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDeleteResponseDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, message);

  /// Create a copy of ProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDeleteResponseDtoImplCopyWith<_$ProductDeleteResponseDtoImpl>
  get copyWith =>
      __$$ProductDeleteResponseDtoImplCopyWithImpl<
        _$ProductDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ProductDeleteResponseDto implements ProductDeleteResponseDto {
  const factory _ProductDeleteResponseDto({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductDeleteResponseDtoImpl;

  factory _ProductDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDeleteResponseDtoImplCopyWith<_$ProductDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

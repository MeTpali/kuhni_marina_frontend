// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_id_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductIdListResponseDto _$ProductIdListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductIdListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductIdListResponseDto {
  @JsonKey(name: 'product_ids')
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductIdListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductIdListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductIdListResponseDtoCopyWith<ProductIdListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdListResponseDtoCopyWith<$Res> {
  factory $ProductIdListResponseDtoCopyWith(
    ProductIdListResponseDto value,
    $Res Function(ProductIdListResponseDto) then,
  ) = _$ProductIdListResponseDtoCopyWithImpl<$Res, ProductIdListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductIdListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductIdListResponseDto
>
    implements $ProductIdListResponseDtoCopyWith<$Res> {
  _$ProductIdListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductIdListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productIds = null,
    Object? total = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            productIds: null == productIds
                ? _value.productIds
                : productIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductIdListResponseDtoImplCopyWith<$Res>
    implements $ProductIdListResponseDtoCopyWith<$Res> {
  factory _$$ProductIdListResponseDtoImplCopyWith(
    _$ProductIdListResponseDtoImpl value,
    $Res Function(_$ProductIdListResponseDtoImpl) then,
  ) = __$$ProductIdListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductIdListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductIdListResponseDtoCopyWithImpl<
          $Res,
          _$ProductIdListResponseDtoImpl
        >
    implements _$$ProductIdListResponseDtoImplCopyWith<$Res> {
  __$$ProductIdListResponseDtoImplCopyWithImpl(
    _$ProductIdListResponseDtoImpl _value,
    $Res Function(_$ProductIdListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductIdListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productIds = null,
    Object? total = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProductIdListResponseDtoImpl(
        productIds: null == productIds
            ? _value._productIds
            : productIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
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
class _$ProductIdListResponseDtoImpl implements _ProductIdListResponseDto {
  const _$ProductIdListResponseDtoImpl({
    @JsonKey(name: 'product_ids') required final List<int> productIds,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'message') this.message,
  }) : _productIds = productIds;

  factory _$ProductIdListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductIdListResponseDtoImplFromJson(json);

  final List<int> _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductIdListResponseDto(productIds: $productIds, total: $total, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductIdListResponseDtoImpl &&
            const DeepCollectionEquality().equals(
              other._productIds,
              _productIds,
            ) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_productIds),
    total,
    message,
  );

  /// Create a copy of ProductIdListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductIdListResponseDtoImplCopyWith<_$ProductIdListResponseDtoImpl>
  get copyWith =>
      __$$ProductIdListResponseDtoImplCopyWithImpl<
        _$ProductIdListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductIdListResponseDtoImplToJson(this);
  }
}

abstract class _ProductIdListResponseDto implements ProductIdListResponseDto {
  const factory _ProductIdListResponseDto({
    @JsonKey(name: 'product_ids') required final List<int> productIds,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductIdListResponseDtoImpl;

  factory _ProductIdListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductIdListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductIdListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductIdListResponseDtoImplCopyWith<_$ProductIdListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

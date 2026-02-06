// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductDeleteResponse _$ProductDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductDeleteResponse {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDeleteResponseCopyWith<ProductDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDeleteResponseCopyWith<$Res> {
  factory $ProductDeleteResponseCopyWith(
    ProductDeleteResponse value,
    $Res Function(ProductDeleteResponse) then,
  ) = _$ProductDeleteResponseCopyWithImpl<$Res, ProductDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductDeleteResponseCopyWithImpl<
  $Res,
  $Val extends ProductDeleteResponse
>
    implements $ProductDeleteResponseCopyWith<$Res> {
  _$ProductDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDeleteResponse
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
abstract class _$$ProductDeleteResponseImplCopyWith<$Res>
    implements $ProductDeleteResponseCopyWith<$Res> {
  factory _$$ProductDeleteResponseImplCopyWith(
    _$ProductDeleteResponseImpl value,
    $Res Function(_$ProductDeleteResponseImpl) then,
  ) = __$$ProductDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$ProductDeleteResponseCopyWithImpl<$Res, _$ProductDeleteResponseImpl>
    implements _$$ProductDeleteResponseImplCopyWith<$Res> {
  __$$ProductDeleteResponseImplCopyWithImpl(
    _$ProductDeleteResponseImpl _value,
    $Res Function(_$ProductDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? productId = null, Object? message = freezed}) {
    return _then(
      _$ProductDeleteResponseImpl(
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
class _$ProductDeleteResponseImpl implements _ProductDeleteResponse {
  const _$ProductDeleteResponseImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProductDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProductDeleteResponse(productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDeleteResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productId, message);

  /// Create a copy of ProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDeleteResponseImplCopyWith<_$ProductDeleteResponseImpl>
  get copyWith =>
      __$$ProductDeleteResponseImplCopyWithImpl<_$ProductDeleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDeleteResponseImplToJson(this);
  }
}

abstract class _ProductDeleteResponse implements ProductDeleteResponse {
  const factory _ProductDeleteResponse({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductDeleteResponseImpl;

  factory _ProductDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ProductDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDeleteResponseImplCopyWith<_$ProductDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

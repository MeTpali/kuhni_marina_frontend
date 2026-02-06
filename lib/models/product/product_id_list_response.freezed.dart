// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_id_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductIdListResponse _$ProductIdListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProductIdListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductIdListResponse {
  @JsonKey(name: 'product_ids')
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProductIdListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductIdListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductIdListResponseCopyWith<ProductIdListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductIdListResponseCopyWith<$Res> {
  factory $ProductIdListResponseCopyWith(
    ProductIdListResponse value,
    $Res Function(ProductIdListResponse) then,
  ) = _$ProductIdListResponseCopyWithImpl<$Res, ProductIdListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProductIdListResponseCopyWithImpl<
  $Res,
  $Val extends ProductIdListResponse
>
    implements $ProductIdListResponseCopyWith<$Res> {
  _$ProductIdListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductIdListResponse
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
abstract class _$$ProductIdListResponseImplCopyWith<$Res>
    implements $ProductIdListResponseCopyWith<$Res> {
  factory _$$ProductIdListResponseImplCopyWith(
    _$ProductIdListResponseImpl value,
    $Res Function(_$ProductIdListResponseImpl) then,
  ) = __$$ProductIdListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProductIdListResponseImplCopyWithImpl<$Res>
    extends
        _$ProductIdListResponseCopyWithImpl<$Res, _$ProductIdListResponseImpl>
    implements _$$ProductIdListResponseImplCopyWith<$Res> {
  __$$ProductIdListResponseImplCopyWithImpl(
    _$ProductIdListResponseImpl _value,
    $Res Function(_$ProductIdListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductIdListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productIds = null,
    Object? total = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProductIdListResponseImpl(
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
class _$ProductIdListResponseImpl implements _ProductIdListResponse {
  const _$ProductIdListResponseImpl({
    @JsonKey(name: 'product_ids') required final List<int> productIds,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'message') this.message,
  }) : _productIds = productIds;

  factory _$ProductIdListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductIdListResponseImplFromJson(json);

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
    return 'ProductIdListResponse(productIds: $productIds, total: $total, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductIdListResponseImpl &&
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

  /// Create a copy of ProductIdListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductIdListResponseImplCopyWith<_$ProductIdListResponseImpl>
  get copyWith =>
      __$$ProductIdListResponseImplCopyWithImpl<_$ProductIdListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductIdListResponseImplToJson(this);
  }
}

abstract class _ProductIdListResponse implements ProductIdListResponse {
  const factory _ProductIdListResponse({
    @JsonKey(name: 'product_ids') required final List<int> productIds,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProductIdListResponseImpl;

  factory _ProductIdListResponse.fromJson(Map<String, dynamic> json) =
      _$ProductIdListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProductIdListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductIdListResponseImplCopyWith<_$ProductIdListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

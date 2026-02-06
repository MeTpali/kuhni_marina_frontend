// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductAttributeUpdateRequest _$ProductAttributeUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ProductAttributeUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeUpdateRequest {
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ProductAttributeUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductAttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductAttributeUpdateRequestCopyWith<ProductAttributeUpdateRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeUpdateRequestCopyWith<$Res> {
  factory $ProductAttributeUpdateRequestCopyWith(
    ProductAttributeUpdateRequest value,
    $Res Function(ProductAttributeUpdateRequest) then,
  ) =
      _$ProductAttributeUpdateRequestCopyWithImpl<
        $Res,
        ProductAttributeUpdateRequest
      >;
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ProductAttributeUpdateRequestCopyWithImpl<
  $Res,
  $Val extends ProductAttributeUpdateRequest
>
    implements $ProductAttributeUpdateRequestCopyWith<$Res> {
  _$ProductAttributeUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductAttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _value.copyWith(
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductAttributeUpdateRequestImplCopyWith<$Res>
    implements $ProductAttributeUpdateRequestCopyWith<$Res> {
  factory _$$ProductAttributeUpdateRequestImplCopyWith(
    _$ProductAttributeUpdateRequestImpl value,
    $Res Function(_$ProductAttributeUpdateRequestImpl) then,
  ) = __$$ProductAttributeUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$ProductAttributeUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$ProductAttributeUpdateRequestCopyWithImpl<
          $Res,
          _$ProductAttributeUpdateRequestImpl
        >
    implements _$$ProductAttributeUpdateRequestImplCopyWith<$Res> {
  __$$ProductAttributeUpdateRequestImplCopyWithImpl(
    _$ProductAttributeUpdateRequestImpl _value,
    $Res Function(_$ProductAttributeUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductAttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null}) {
    return _then(
      _$ProductAttributeUpdateRequestImpl(
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAttributeUpdateRequestImpl
    implements _ProductAttributeUpdateRequest {
  const _$ProductAttributeUpdateRequestImpl({
    @JsonKey(name: 'value') required this.value,
  });

  factory _$ProductAttributeUpdateRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProductAttributeUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ProductAttributeUpdateRequest(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeUpdateRequestImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ProductAttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeUpdateRequestImplCopyWith<
    _$ProductAttributeUpdateRequestImpl
  >
  get copyWith =>
      __$$ProductAttributeUpdateRequestImplCopyWithImpl<
        _$ProductAttributeUpdateRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeUpdateRequestImplToJson(this);
  }
}

abstract class _ProductAttributeUpdateRequest
    implements ProductAttributeUpdateRequest {
  const factory _ProductAttributeUpdateRequest({
    @JsonKey(name: 'value') required final String value,
  }) = _$ProductAttributeUpdateRequestImpl;

  factory _ProductAttributeUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of ProductAttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAttributeUpdateRequestImplCopyWith<
    _$ProductAttributeUpdateRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

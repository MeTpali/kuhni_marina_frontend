// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeDeleteResponse _$AttributeDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$AttributeDeleteResponse {
  @JsonKey(name: 'attribute_id')
  int get attributeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeDeleteResponseCopyWith<AttributeDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeDeleteResponseCopyWith<$Res> {
  factory $AttributeDeleteResponseCopyWith(
    AttributeDeleteResponse value,
    $Res Function(AttributeDeleteResponse) then,
  ) = _$AttributeDeleteResponseCopyWithImpl<$Res, AttributeDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeDeleteResponseCopyWithImpl<
  $Res,
  $Val extends AttributeDeleteResponse
>
    implements $AttributeDeleteResponseCopyWith<$Res> {
  _$AttributeDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributeId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            attributeId: null == attributeId
                ? _value.attributeId
                : attributeId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AttributeDeleteResponseImplCopyWith<$Res>
    implements $AttributeDeleteResponseCopyWith<$Res> {
  factory _$$AttributeDeleteResponseImplCopyWith(
    _$AttributeDeleteResponseImpl value,
    $Res Function(_$AttributeDeleteResponseImpl) then,
  ) = __$$AttributeDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'attribute_id') int attributeId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$AttributeDeleteResponseCopyWithImpl<
          $Res,
          _$AttributeDeleteResponseImpl
        >
    implements _$$AttributeDeleteResponseImplCopyWith<$Res> {
  __$$AttributeDeleteResponseImplCopyWithImpl(
    _$AttributeDeleteResponseImpl _value,
    $Res Function(_$AttributeDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attributeId = null, Object? message = freezed}) {
    return _then(
      _$AttributeDeleteResponseImpl(
        attributeId: null == attributeId
            ? _value.attributeId
            : attributeId // ignore: cast_nullable_to_non_nullable
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
class _$AttributeDeleteResponseImpl implements _AttributeDeleteResponse {
  const _$AttributeDeleteResponseImpl({
    @JsonKey(name: 'attribute_id') required this.attributeId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$AttributeDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'attribute_id')
  final int attributeId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeDeleteResponse(attributeId: $attributeId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeDeleteResponseImpl &&
            (identical(other.attributeId, attributeId) ||
                other.attributeId == attributeId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, attributeId, message);

  /// Create a copy of AttributeDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeDeleteResponseImplCopyWith<_$AttributeDeleteResponseImpl>
  get copyWith =>
      __$$AttributeDeleteResponseImplCopyWithImpl<
        _$AttributeDeleteResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeDeleteResponseImplToJson(this);
  }
}

abstract class _AttributeDeleteResponse implements AttributeDeleteResponse {
  const factory _AttributeDeleteResponse({
    @JsonKey(name: 'attribute_id') required final int attributeId,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeDeleteResponseImpl;

  factory _AttributeDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$AttributeDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'attribute_id')
  int get attributeId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeDeleteResponseImplCopyWith<_$AttributeDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

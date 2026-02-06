// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeResponse _$AttributeResponseFromJson(Map<String, dynamic> json) {
  return _AttributeResponse.fromJson(json);
}

/// @nodoc
mixin _$AttributeResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeResponseCopyWith<AttributeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeResponseCopyWith<$Res> {
  factory $AttributeResponseCopyWith(
    AttributeResponse value,
    $Res Function(AttributeResponse) then,
  ) = _$AttributeResponseCopyWithImpl<$Res, AttributeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeResponseCopyWithImpl<$Res, $Val extends AttributeResponse>
    implements $AttributeResponseCopyWith<$Res> {
  _$AttributeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = freezed,
    Object? message = freezed,
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
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$AttributeResponseImplCopyWith<$Res>
    implements $AttributeResponseCopyWith<$Res> {
  factory _$$AttributeResponseImplCopyWith(
    _$AttributeResponseImpl value,
    $Res Function(_$AttributeResponseImpl) then,
  ) = __$$AttributeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeResponseImplCopyWithImpl<$Res>
    extends _$AttributeResponseCopyWithImpl<$Res, _$AttributeResponseImpl>
    implements _$$AttributeResponseImplCopyWith<$Res> {
  __$$AttributeResponseImplCopyWithImpl(
    _$AttributeResponseImpl _value,
    $Res Function(_$AttributeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? unit = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$AttributeResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$AttributeResponseImpl implements _AttributeResponse {
  const _$AttributeResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'unit') this.unit,
    @JsonKey(name: 'message') this.message,
  });

  factory _$AttributeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'unit')
  final String? unit;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeResponse(id: $id, name: $name, unit: $unit, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, unit, message);

  /// Create a copy of AttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeResponseImplCopyWith<_$AttributeResponseImpl> get copyWith =>
      __$$AttributeResponseImplCopyWithImpl<_$AttributeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeResponseImplToJson(this);
  }
}

abstract class _AttributeResponse implements AttributeResponse {
  const factory _AttributeResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'unit') final String? unit,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeResponseImpl;

  factory _AttributeResponse.fromJson(Map<String, dynamic> json) =
      _$AttributeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'unit')
  String? get unit;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeResponseImplCopyWith<_$AttributeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

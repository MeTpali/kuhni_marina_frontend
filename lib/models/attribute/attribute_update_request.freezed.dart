// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeUpdateRequest _$AttributeUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$AttributeUpdateRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;

  /// Serializes this AttributeUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeUpdateRequestCopyWith<AttributeUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeUpdateRequestCopyWith<$Res> {
  factory $AttributeUpdateRequestCopyWith(
    AttributeUpdateRequest value,
    $Res Function(AttributeUpdateRequest) then,
  ) = _$AttributeUpdateRequestCopyWithImpl<$Res, AttributeUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
  });
}

/// @nodoc
class _$AttributeUpdateRequestCopyWithImpl<
  $Res,
  $Val extends AttributeUpdateRequest
>
    implements $AttributeUpdateRequestCopyWith<$Res> {
  _$AttributeUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? unit = freezed}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            unit: freezed == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttributeUpdateRequestImplCopyWith<$Res>
    implements $AttributeUpdateRequestCopyWith<$Res> {
  factory _$$AttributeUpdateRequestImplCopyWith(
    _$AttributeUpdateRequestImpl value,
    $Res Function(_$AttributeUpdateRequestImpl) then,
  ) = __$$AttributeUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'unit') String? unit,
  });
}

/// @nodoc
class __$$AttributeUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$AttributeUpdateRequestCopyWithImpl<$Res, _$AttributeUpdateRequestImpl>
    implements _$$AttributeUpdateRequestImplCopyWith<$Res> {
  __$$AttributeUpdateRequestImplCopyWithImpl(
    _$AttributeUpdateRequestImpl _value,
    $Res Function(_$AttributeUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? unit = freezed}) {
    return _then(
      _$AttributeUpdateRequestImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        unit: freezed == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeUpdateRequestImpl implements _AttributeUpdateRequest {
  const _$AttributeUpdateRequestImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'unit') this.unit,
  });

  factory _$AttributeUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeUpdateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'unit')
  final String? unit;

  @override
  String toString() {
    return 'AttributeUpdateRequest(name: $name, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeUpdateRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, unit);

  /// Create a copy of AttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeUpdateRequestImplCopyWith<_$AttributeUpdateRequestImpl>
  get copyWith =>
      __$$AttributeUpdateRequestImplCopyWithImpl<_$AttributeUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeUpdateRequestImplToJson(this);
  }
}

abstract class _AttributeUpdateRequest implements AttributeUpdateRequest {
  const factory _AttributeUpdateRequest({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'unit') final String? unit,
  }) = _$AttributeUpdateRequestImpl;

  factory _AttributeUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$AttributeUpdateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'unit')
  String? get unit;

  /// Create a copy of AttributeUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeUpdateRequestImplCopyWith<_$AttributeUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

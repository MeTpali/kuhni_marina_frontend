// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ValidationErrorDto _$ValidationErrorDtoFromJson(Map<String, dynamic> json) {
  return _ValidationErrorDto.fromJson(json);
}

/// @nodoc
mixin _$ValidationErrorDto {
  @JsonKey(name: 'loc')
  List<Object> get loc => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ValidationErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorDtoCopyWith<ValidationErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorDtoCopyWith<$Res> {
  factory $ValidationErrorDtoCopyWith(
    ValidationErrorDto value,
    $Res Function(ValidationErrorDto) then,
  ) = _$ValidationErrorDtoCopyWithImpl<$Res, ValidationErrorDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'loc') List<Object> loc,
    @JsonKey(name: 'msg') String msg,
    @JsonKey(name: 'type') String type,
  });
}

/// @nodoc
class _$ValidationErrorDtoCopyWithImpl<$Res, $Val extends ValidationErrorDto>
    implements $ValidationErrorDtoCopyWith<$Res> {
  _$ValidationErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? loc = null, Object? msg = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            loc: null == loc
                ? _value.loc
                : loc // ignore: cast_nullable_to_non_nullable
                      as List<Object>,
            msg: null == msg
                ? _value.msg
                : msg // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ValidationErrorDtoImplCopyWith<$Res>
    implements $ValidationErrorDtoCopyWith<$Res> {
  factory _$$ValidationErrorDtoImplCopyWith(
    _$ValidationErrorDtoImpl value,
    $Res Function(_$ValidationErrorDtoImpl) then,
  ) = __$$ValidationErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'loc') List<Object> loc,
    @JsonKey(name: 'msg') String msg,
    @JsonKey(name: 'type') String type,
  });
}

/// @nodoc
class __$$ValidationErrorDtoImplCopyWithImpl<$Res>
    extends _$ValidationErrorDtoCopyWithImpl<$Res, _$ValidationErrorDtoImpl>
    implements _$$ValidationErrorDtoImplCopyWith<$Res> {
  __$$ValidationErrorDtoImplCopyWithImpl(
    _$ValidationErrorDtoImpl _value,
    $Res Function(_$ValidationErrorDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? loc = null, Object? msg = null, Object? type = null}) {
    return _then(
      _$ValidationErrorDtoImpl(
        loc: null == loc
            ? _value._loc
            : loc // ignore: cast_nullable_to_non_nullable
                  as List<Object>,
        msg: null == msg
            ? _value.msg
            : msg // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationErrorDtoImpl implements _ValidationErrorDto {
  const _$ValidationErrorDtoImpl({
    @JsonKey(name: 'loc') required final List<Object> loc,
    @JsonKey(name: 'msg') required this.msg,
    @JsonKey(name: 'type') required this.type,
  }) : _loc = loc;

  factory _$ValidationErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorDtoImplFromJson(json);

  final List<Object> _loc;
  @override
  @JsonKey(name: 'loc')
  List<Object> get loc {
    if (_loc is EqualUnmodifiableListView) return _loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loc);
  }

  @override
  @JsonKey(name: 'msg')
  final String msg;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'ValidationErrorDto(loc: $loc, msg: $msg, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorDtoImpl &&
            const DeepCollectionEquality().equals(other._loc, _loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_loc),
    msg,
    type,
  );

  /// Create a copy of ValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorDtoImplCopyWith<_$ValidationErrorDtoImpl> get copyWith =>
      __$$ValidationErrorDtoImplCopyWithImpl<_$ValidationErrorDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorDtoImplToJson(this);
  }
}

abstract class _ValidationErrorDto implements ValidationErrorDto {
  const factory _ValidationErrorDto({
    @JsonKey(name: 'loc') required final List<Object> loc,
    @JsonKey(name: 'msg') required final String msg,
    @JsonKey(name: 'type') required final String type,
  }) = _$ValidationErrorDtoImpl;

  factory _ValidationErrorDto.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorDtoImpl.fromJson;

  @override
  @JsonKey(name: 'loc')
  List<Object> get loc;
  @override
  @JsonKey(name: 'msg')
  String get msg;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of ValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorDtoImplCopyWith<_$ValidationErrorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_session_ack_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GuestSessionAckResponseDto _$GuestSessionAckResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _GuestSessionAckResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GuestSessionAckResponseDto {
  @JsonKey(name: 'ok')
  bool get ok => throw _privateConstructorUsedError;

  /// Serializes this GuestSessionAckResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuestSessionAckResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestSessionAckResponseDtoCopyWith<GuestSessionAckResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestSessionAckResponseDtoCopyWith<$Res> {
  factory $GuestSessionAckResponseDtoCopyWith(
    GuestSessionAckResponseDto value,
    $Res Function(GuestSessionAckResponseDto) then,
  ) =
      _$GuestSessionAckResponseDtoCopyWithImpl<
        $Res,
        GuestSessionAckResponseDto
      >;
  @useResult
  $Res call({@JsonKey(name: 'ok') bool ok});
}

/// @nodoc
class _$GuestSessionAckResponseDtoCopyWithImpl<
  $Res,
  $Val extends GuestSessionAckResponseDto
>
    implements $GuestSessionAckResponseDtoCopyWith<$Res> {
  _$GuestSessionAckResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestSessionAckResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null}) {
    return _then(
      _value.copyWith(
            ok: null == ok
                ? _value.ok
                : ok // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuestSessionAckResponseDtoImplCopyWith<$Res>
    implements $GuestSessionAckResponseDtoCopyWith<$Res> {
  factory _$$GuestSessionAckResponseDtoImplCopyWith(
    _$GuestSessionAckResponseDtoImpl value,
    $Res Function(_$GuestSessionAckResponseDtoImpl) then,
  ) = __$$GuestSessionAckResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'ok') bool ok});
}

/// @nodoc
class __$$GuestSessionAckResponseDtoImplCopyWithImpl<$Res>
    extends
        _$GuestSessionAckResponseDtoCopyWithImpl<
          $Res,
          _$GuestSessionAckResponseDtoImpl
        >
    implements _$$GuestSessionAckResponseDtoImplCopyWith<$Res> {
  __$$GuestSessionAckResponseDtoImplCopyWithImpl(
    _$GuestSessionAckResponseDtoImpl _value,
    $Res Function(_$GuestSessionAckResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuestSessionAckResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ok = null}) {
    return _then(
      _$GuestSessionAckResponseDtoImpl(
        ok: null == ok
            ? _value.ok
            : ok // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestSessionAckResponseDtoImpl implements _GuestSessionAckResponseDto {
  const _$GuestSessionAckResponseDtoImpl({@JsonKey(name: 'ok') this.ok = true});

  factory _$GuestSessionAckResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$GuestSessionAckResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'ok')
  final bool ok;

  @override
  String toString() {
    return 'GuestSessionAckResponseDto(ok: $ok)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestSessionAckResponseDtoImpl &&
            (identical(other.ok, ok) || other.ok == ok));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ok);

  /// Create a copy of GuestSessionAckResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestSessionAckResponseDtoImplCopyWith<_$GuestSessionAckResponseDtoImpl>
  get copyWith =>
      __$$GuestSessionAckResponseDtoImplCopyWithImpl<
        _$GuestSessionAckResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestSessionAckResponseDtoImplToJson(this);
  }
}

abstract class _GuestSessionAckResponseDto
    implements GuestSessionAckResponseDto {
  const factory _GuestSessionAckResponseDto({
    @JsonKey(name: 'ok') final bool ok,
  }) = _$GuestSessionAckResponseDtoImpl;

  factory _GuestSessionAckResponseDto.fromJson(Map<String, dynamic> json) =
      _$GuestSessionAckResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'ok')
  bool get ok;

  /// Create a copy of GuestSessionAckResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestSessionAckResponseDtoImplCopyWith<_$GuestSessionAckResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

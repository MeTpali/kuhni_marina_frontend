// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_status_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MeasureRequestStatusUpdateRequestDto
_$MeasureRequestStatusUpdateRequestDtoFromJson(Map<String, dynamic> json) {
  return _MeasureRequestStatusUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$MeasureRequestStatusUpdateRequestDto {
  @JsonKey(name: 'status')
  MeasureRequestStatusEnum get status => throw _privateConstructorUsedError;

  /// Serializes this MeasureRequestStatusUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestStatusUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestStatusUpdateRequestDtoCopyWith<
    MeasureRequestStatusUpdateRequestDto
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestStatusUpdateRequestDtoCopyWith<$Res> {
  factory $MeasureRequestStatusUpdateRequestDtoCopyWith(
    MeasureRequestStatusUpdateRequestDto value,
    $Res Function(MeasureRequestStatusUpdateRequestDto) then,
  ) =
      _$MeasureRequestStatusUpdateRequestDtoCopyWithImpl<
        $Res,
        MeasureRequestStatusUpdateRequestDto
      >;
  @useResult
  $Res call({@JsonKey(name: 'status') MeasureRequestStatusEnum status});
}

/// @nodoc
class _$MeasureRequestStatusUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends MeasureRequestStatusUpdateRequestDto
>
    implements $MeasureRequestStatusUpdateRequestDtoCopyWith<$Res> {
  _$MeasureRequestStatusUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestStatusUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatusEnum,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestStatusUpdateRequestDtoImplCopyWith<$Res>
    implements $MeasureRequestStatusUpdateRequestDtoCopyWith<$Res> {
  factory _$$MeasureRequestStatusUpdateRequestDtoImplCopyWith(
    _$MeasureRequestStatusUpdateRequestDtoImpl value,
    $Res Function(_$MeasureRequestStatusUpdateRequestDtoImpl) then,
  ) = __$$MeasureRequestStatusUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'status') MeasureRequestStatusEnum status});
}

/// @nodoc
class __$$MeasureRequestStatusUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestStatusUpdateRequestDtoCopyWithImpl<
          $Res,
          _$MeasureRequestStatusUpdateRequestDtoImpl
        >
    implements _$$MeasureRequestStatusUpdateRequestDtoImplCopyWith<$Res> {
  __$$MeasureRequestStatusUpdateRequestDtoImplCopyWithImpl(
    _$MeasureRequestStatusUpdateRequestDtoImpl _value,
    $Res Function(_$MeasureRequestStatusUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestStatusUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$MeasureRequestStatusUpdateRequestDtoImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatusEnum,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureRequestStatusUpdateRequestDtoImpl
    implements _MeasureRequestStatusUpdateRequestDto {
  const _$MeasureRequestStatusUpdateRequestDtoImpl({
    @JsonKey(name: 'status') required this.status,
  });

  factory _$MeasureRequestStatusUpdateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MeasureRequestStatusUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final MeasureRequestStatusEnum status;

  @override
  String toString() {
    return 'MeasureRequestStatusUpdateRequestDto(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestStatusUpdateRequestDtoImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of MeasureRequestStatusUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestStatusUpdateRequestDtoImplCopyWith<
    _$MeasureRequestStatusUpdateRequestDtoImpl
  >
  get copyWith =>
      __$$MeasureRequestStatusUpdateRequestDtoImplCopyWithImpl<
        _$MeasureRequestStatusUpdateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureRequestStatusUpdateRequestDtoImplToJson(this);
  }
}

abstract class _MeasureRequestStatusUpdateRequestDto
    implements MeasureRequestStatusUpdateRequestDto {
  const factory _MeasureRequestStatusUpdateRequestDto({
    @JsonKey(name: 'status') required final MeasureRequestStatusEnum status,
  }) = _$MeasureRequestStatusUpdateRequestDtoImpl;

  factory _MeasureRequestStatusUpdateRequestDto.fromJson(
    Map<String, dynamic> json,
  ) = _$MeasureRequestStatusUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  MeasureRequestStatusEnum get status;

  /// Create a copy of MeasureRequestStatusUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestStatusUpdateRequestDtoImplCopyWith<
    _$MeasureRequestStatusUpdateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

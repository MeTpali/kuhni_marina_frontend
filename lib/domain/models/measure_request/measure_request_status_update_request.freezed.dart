// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_status_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MeasureRequestStatusUpdateRequest {
  MeasureRequestStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestStatusUpdateRequestCopyWith<MeasureRequestStatusUpdateRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestStatusUpdateRequestCopyWith<$Res> {
  factory $MeasureRequestStatusUpdateRequestCopyWith(
    MeasureRequestStatusUpdateRequest value,
    $Res Function(MeasureRequestStatusUpdateRequest) then,
  ) =
      _$MeasureRequestStatusUpdateRequestCopyWithImpl<
        $Res,
        MeasureRequestStatusUpdateRequest
      >;
  @useResult
  $Res call({MeasureRequestStatus status});
}

/// @nodoc
class _$MeasureRequestStatusUpdateRequestCopyWithImpl<
  $Res,
  $Val extends MeasureRequestStatusUpdateRequest
>
    implements $MeasureRequestStatusUpdateRequestCopyWith<$Res> {
  _$MeasureRequestStatusUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestStatusUpdateRequestImplCopyWith<$Res>
    implements $MeasureRequestStatusUpdateRequestCopyWith<$Res> {
  factory _$$MeasureRequestStatusUpdateRequestImplCopyWith(
    _$MeasureRequestStatusUpdateRequestImpl value,
    $Res Function(_$MeasureRequestStatusUpdateRequestImpl) then,
  ) = __$$MeasureRequestStatusUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeasureRequestStatus status});
}

/// @nodoc
class __$$MeasureRequestStatusUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestStatusUpdateRequestCopyWithImpl<
          $Res,
          _$MeasureRequestStatusUpdateRequestImpl
        >
    implements _$$MeasureRequestStatusUpdateRequestImplCopyWith<$Res> {
  __$$MeasureRequestStatusUpdateRequestImplCopyWithImpl(
    _$MeasureRequestStatusUpdateRequestImpl _value,
    $Res Function(_$MeasureRequestStatusUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null}) {
    return _then(
      _$MeasureRequestStatusUpdateRequestImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatus,
      ),
    );
  }
}

/// @nodoc

class _$MeasureRequestStatusUpdateRequestImpl
    implements _MeasureRequestStatusUpdateRequest {
  const _$MeasureRequestStatusUpdateRequestImpl({required this.status});

  @override
  final MeasureRequestStatus status;

  @override
  String toString() {
    return 'MeasureRequestStatusUpdateRequest(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestStatusUpdateRequestImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of MeasureRequestStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestStatusUpdateRequestImplCopyWith<
    _$MeasureRequestStatusUpdateRequestImpl
  >
  get copyWith =>
      __$$MeasureRequestStatusUpdateRequestImplCopyWithImpl<
        _$MeasureRequestStatusUpdateRequestImpl
      >(this, _$identity);
}

abstract class _MeasureRequestStatusUpdateRequest
    implements MeasureRequestStatusUpdateRequest {
  const factory _MeasureRequestStatusUpdateRequest({
    required final MeasureRequestStatus status,
  }) = _$MeasureRequestStatusUpdateRequestImpl;

  @override
  MeasureRequestStatus get status;

  /// Create a copy of MeasureRequestStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestStatusUpdateRequestImplCopyWith<
    _$MeasureRequestStatusUpdateRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

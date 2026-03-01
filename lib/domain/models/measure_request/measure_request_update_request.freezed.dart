// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MeasureRequestUpdateRequest {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get preferredDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  MeasureRequestStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestUpdateRequestCopyWith<MeasureRequestUpdateRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestUpdateRequestCopyWith<$Res> {
  factory $MeasureRequestUpdateRequestCopyWith(
    MeasureRequestUpdateRequest value,
    $Res Function(MeasureRequestUpdateRequest) then,
  ) =
      _$MeasureRequestUpdateRequestCopyWithImpl<
        $Res,
        MeasureRequestUpdateRequest
      >;
  @useResult
  $Res call({
    String? fullName,
    String? phone,
    String? address,
    DateTime? preferredDate,
    String? comment,
    MeasureRequestStatus? status,
  });
}

/// @nodoc
class _$MeasureRequestUpdateRequestCopyWithImpl<
  $Res,
  $Val extends MeasureRequestUpdateRequest
>
    implements $MeasureRequestUpdateRequestCopyWith<$Res> {
  _$MeasureRequestUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            preferredDate: freezed == preferredDate
                ? _value.preferredDate
                : preferredDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatus?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestUpdateRequestImplCopyWith<$Res>
    implements $MeasureRequestUpdateRequestCopyWith<$Res> {
  factory _$$MeasureRequestUpdateRequestImplCopyWith(
    _$MeasureRequestUpdateRequestImpl value,
    $Res Function(_$MeasureRequestUpdateRequestImpl) then,
  ) = __$$MeasureRequestUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? fullName,
    String? phone,
    String? address,
    DateTime? preferredDate,
    String? comment,
    MeasureRequestStatus? status,
  });
}

/// @nodoc
class __$$MeasureRequestUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestUpdateRequestCopyWithImpl<
          $Res,
          _$MeasureRequestUpdateRequestImpl
        >
    implements _$$MeasureRequestUpdateRequestImplCopyWith<$Res> {
  __$$MeasureRequestUpdateRequestImplCopyWithImpl(
    _$MeasureRequestUpdateRequestImpl _value,
    $Res Function(_$MeasureRequestUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$MeasureRequestUpdateRequestImpl(
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        preferredDate: freezed == preferredDate
            ? _value.preferredDate
            : preferredDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatus?,
      ),
    );
  }
}

/// @nodoc

class _$MeasureRequestUpdateRequestImpl
    implements _MeasureRequestUpdateRequest {
  const _$MeasureRequestUpdateRequestImpl({
    this.fullName,
    this.phone,
    this.address,
    this.preferredDate,
    this.comment,
    this.status,
  });

  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  final DateTime? preferredDate;
  @override
  final String? comment;
  @override
  final MeasureRequestStatus? status;

  @override
  String toString() {
    return 'MeasureRequestUpdateRequest(fullName: $fullName, phone: $phone, address: $address, preferredDate: $preferredDate, comment: $comment, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestUpdateRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.preferredDate, preferredDate) ||
                other.preferredDate == preferredDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    fullName,
    phone,
    address,
    preferredDate,
    comment,
    status,
  );

  /// Create a copy of MeasureRequestUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestUpdateRequestImplCopyWith<_$MeasureRequestUpdateRequestImpl>
  get copyWith =>
      __$$MeasureRequestUpdateRequestImplCopyWithImpl<
        _$MeasureRequestUpdateRequestImpl
      >(this, _$identity);
}

abstract class _MeasureRequestUpdateRequest
    implements MeasureRequestUpdateRequest {
  const factory _MeasureRequestUpdateRequest({
    final String? fullName,
    final String? phone,
    final String? address,
    final DateTime? preferredDate,
    final String? comment,
    final MeasureRequestStatus? status,
  }) = _$MeasureRequestUpdateRequestImpl;

  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  DateTime? get preferredDate;
  @override
  String? get comment;
  @override
  MeasureRequestStatus? get status;

  /// Create a copy of MeasureRequestUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestUpdateRequestImplCopyWith<_$MeasureRequestUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

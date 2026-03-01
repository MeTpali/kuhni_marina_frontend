// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MeasureRequest {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  MeasureRequestStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get preferredDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestCopyWith<MeasureRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestCopyWith<$Res> {
  factory $MeasureRequestCopyWith(
    MeasureRequest value,
    $Res Function(MeasureRequest) then,
  ) = _$MeasureRequestCopyWithImpl<$Res, MeasureRequest>;
  @useResult
  $Res call({
    int id,
    String fullName,
    String phone,
    String address,
    MeasureRequestStatus status,
    DateTime createdAt,
    DateTime? preferredDate,
    String? comment,
  });
}

/// @nodoc
class _$MeasureRequestCopyWithImpl<$Res, $Val extends MeasureRequest>
    implements $MeasureRequestCopyWith<$Res> {
  _$MeasureRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? status = null,
    Object? createdAt = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            preferredDate: freezed == preferredDate
                ? _value.preferredDate
                : preferredDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestImplCopyWith<$Res>
    implements $MeasureRequestCopyWith<$Res> {
  factory _$$MeasureRequestImplCopyWith(
    _$MeasureRequestImpl value,
    $Res Function(_$MeasureRequestImpl) then,
  ) = __$$MeasureRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String fullName,
    String phone,
    String address,
    MeasureRequestStatus status,
    DateTime createdAt,
    DateTime? preferredDate,
    String? comment,
  });
}

/// @nodoc
class __$$MeasureRequestImplCopyWithImpl<$Res>
    extends _$MeasureRequestCopyWithImpl<$Res, _$MeasureRequestImpl>
    implements _$$MeasureRequestImplCopyWith<$Res> {
  __$$MeasureRequestImplCopyWithImpl(
    _$MeasureRequestImpl _value,
    $Res Function(_$MeasureRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? status = null,
    Object? createdAt = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
  }) {
    return _then(
      _$MeasureRequestImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        preferredDate: freezed == preferredDate
            ? _value.preferredDate
            : preferredDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$MeasureRequestImpl implements _MeasureRequest {
  const _$MeasureRequestImpl({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.address,
    required this.status,
    required this.createdAt,
    this.preferredDate,
    this.comment,
  });

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String phone;
  @override
  final String address;
  @override
  final MeasureRequestStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? preferredDate;
  @override
  final String? comment;

  @override
  String toString() {
    return 'MeasureRequest(id: $id, fullName: $fullName, phone: $phone, address: $address, status: $status, createdAt: $createdAt, preferredDate: $preferredDate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.preferredDate, preferredDate) ||
                other.preferredDate == preferredDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    phone,
    address,
    status,
    createdAt,
    preferredDate,
    comment,
  );

  /// Create a copy of MeasureRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestImplCopyWith<_$MeasureRequestImpl> get copyWith =>
      __$$MeasureRequestImplCopyWithImpl<_$MeasureRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _MeasureRequest implements MeasureRequest {
  const factory _MeasureRequest({
    required final int id,
    required final String fullName,
    required final String phone,
    required final String address,
    required final MeasureRequestStatus status,
    required final DateTime createdAt,
    final DateTime? preferredDate,
    final String? comment,
  }) = _$MeasureRequestImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get phone;
  @override
  String get address;
  @override
  MeasureRequestStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get preferredDate;
  @override
  String? get comment;

  /// Create a copy of MeasureRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestImplCopyWith<_$MeasureRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

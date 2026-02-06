// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MeasureRequestResponse _$MeasureRequestResponseFromJson(
  Map<String, dynamic> json,
) {
  return _MeasureRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$MeasureRequestResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_date')
  DateTime? get preferredDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  MeasureRequestStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this MeasureRequestResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestResponseCopyWith<MeasureRequestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestResponseCopyWith<$Res> {
  factory $MeasureRequestResponseCopyWith(
    MeasureRequestResponse value,
    $Res Function(MeasureRequestResponse) then,
  ) = _$MeasureRequestResponseCopyWithImpl<$Res, MeasureRequestResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'phone') String phone,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatus status,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$MeasureRequestResponseCopyWithImpl<
  $Res,
  $Val extends MeasureRequestResponse
>
    implements $MeasureRequestResponseCopyWith<$Res> {
  _$MeasureRequestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? message = freezed,
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
            preferredDate: freezed == preferredDate
                ? _value.preferredDate
                : preferredDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
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
abstract class _$$MeasureRequestResponseImplCopyWith<$Res>
    implements $MeasureRequestResponseCopyWith<$Res> {
  factory _$$MeasureRequestResponseImplCopyWith(
    _$MeasureRequestResponseImpl value,
    $Res Function(_$MeasureRequestResponseImpl) then,
  ) = __$$MeasureRequestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'phone') String phone,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatus status,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$MeasureRequestResponseImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestResponseCopyWithImpl<$Res, _$MeasureRequestResponseImpl>
    implements _$$MeasureRequestResponseImplCopyWith<$Res> {
  __$$MeasureRequestResponseImplCopyWithImpl(
    _$MeasureRequestResponseImpl _value,
    $Res Function(_$MeasureRequestResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? message = freezed,
  }) {
    return _then(
      _$MeasureRequestResponseImpl(
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
        preferredDate: freezed == preferredDate
            ? _value.preferredDate
            : preferredDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
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
class _$MeasureRequestResponseImpl implements _MeasureRequestResponse {
  const _$MeasureRequestResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'full_name') required this.fullName,
    @JsonKey(name: 'phone') required this.phone,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'preferred_date') this.preferredDate,
    @JsonKey(name: 'comment') this.comment,
    @JsonKey(name: 'status') required this.status,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'message') this.message,
  });

  factory _$MeasureRequestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeasureRequestResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'preferred_date')
  final DateTime? preferredDate;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'status')
  final MeasureRequestStatus status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'MeasureRequestResponse(id: $id, fullName: $fullName, phone: $phone, address: $address, preferredDate: $preferredDate, comment: $comment, status: $status, createdAt: $createdAt, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.preferredDate, preferredDate) ||
                other.preferredDate == preferredDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    phone,
    address,
    preferredDate,
    comment,
    status,
    createdAt,
    message,
  );

  /// Create a copy of MeasureRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestResponseImplCopyWith<_$MeasureRequestResponseImpl>
  get copyWith =>
      __$$MeasureRequestResponseImplCopyWithImpl<_$MeasureRequestResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureRequestResponseImplToJson(this);
  }
}

abstract class _MeasureRequestResponse implements MeasureRequestResponse {
  const factory _MeasureRequestResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'phone') required final String phone,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'preferred_date') final DateTime? preferredDate,
    @JsonKey(name: 'comment') final String? comment,
    @JsonKey(name: 'status') required final MeasureRequestStatus status,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'message') final String? message,
  }) = _$MeasureRequestResponseImpl;

  factory _MeasureRequestResponse.fromJson(Map<String, dynamic> json) =
      _$MeasureRequestResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'preferred_date')
  DateTime? get preferredDate;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'status')
  MeasureRequestStatus get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of MeasureRequestResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestResponseImplCopyWith<_$MeasureRequestResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

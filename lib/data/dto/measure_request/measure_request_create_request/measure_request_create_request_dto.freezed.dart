// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MeasureRequestCreateRequestDto _$MeasureRequestCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _MeasureRequestCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$MeasureRequestCreateRequestDto {
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
  MeasureRequestStatusEnum? get status => throw _privateConstructorUsedError;

  /// Serializes this MeasureRequestCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestCreateRequestDtoCopyWith<MeasureRequestCreateRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestCreateRequestDtoCopyWith<$Res> {
  factory $MeasureRequestCreateRequestDtoCopyWith(
    MeasureRequestCreateRequestDto value,
    $Res Function(MeasureRequestCreateRequestDto) then,
  ) =
      _$MeasureRequestCreateRequestDtoCopyWithImpl<
        $Res,
        MeasureRequestCreateRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'phone') String phone,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  });
}

/// @nodoc
class _$MeasureRequestCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends MeasureRequestCreateRequestDto
>
    implements $MeasureRequestCreateRequestDtoCopyWith<$Res> {
  _$MeasureRequestCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _value.copyWith(
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
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MeasureRequestStatusEnum?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestCreateRequestDtoImplCopyWith<$Res>
    implements $MeasureRequestCreateRequestDtoCopyWith<$Res> {
  factory _$$MeasureRequestCreateRequestDtoImplCopyWith(
    _$MeasureRequestCreateRequestDtoImpl value,
    $Res Function(_$MeasureRequestCreateRequestDtoImpl) then,
  ) = __$$MeasureRequestCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'phone') String phone,
    @JsonKey(name: 'address') String address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  });
}

/// @nodoc
class __$$MeasureRequestCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestCreateRequestDtoCopyWithImpl<
          $Res,
          _$MeasureRequestCreateRequestDtoImpl
        >
    implements _$$MeasureRequestCreateRequestDtoImplCopyWith<$Res> {
  __$$MeasureRequestCreateRequestDtoImplCopyWithImpl(
    _$MeasureRequestCreateRequestDtoImpl _value,
    $Res Function(_$MeasureRequestCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? phone = null,
    Object? address = null,
    Object? preferredDate = freezed,
    Object? comment = freezed,
    Object? status = freezed,
  }) {
    return _then(
      _$MeasureRequestCreateRequestDtoImpl(
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
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MeasureRequestStatusEnum?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureRequestCreateRequestDtoImpl
    implements _MeasureRequestCreateRequestDto {
  const _$MeasureRequestCreateRequestDtoImpl({
    @JsonKey(name: 'full_name') required this.fullName,
    @JsonKey(name: 'phone') required this.phone,
    @JsonKey(name: 'address') required this.address,
    @JsonKey(name: 'preferred_date') this.preferredDate,
    @JsonKey(name: 'comment') this.comment,
    @JsonKey(name: 'status') this.status,
  });

  factory _$MeasureRequestCreateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MeasureRequestCreateRequestDtoImplFromJson(json);

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
  final MeasureRequestStatusEnum? status;

  @override
  String toString() {
    return 'MeasureRequestCreateRequestDto(fullName: $fullName, phone: $phone, address: $address, preferredDate: $preferredDate, comment: $comment, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestCreateRequestDtoImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.preferredDate, preferredDate) ||
                other.preferredDate == preferredDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MeasureRequestCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestCreateRequestDtoImplCopyWith<
    _$MeasureRequestCreateRequestDtoImpl
  >
  get copyWith =>
      __$$MeasureRequestCreateRequestDtoImplCopyWithImpl<
        _$MeasureRequestCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureRequestCreateRequestDtoImplToJson(this);
  }
}

abstract class _MeasureRequestCreateRequestDto
    implements MeasureRequestCreateRequestDto {
  const factory _MeasureRequestCreateRequestDto({
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'phone') required final String phone,
    @JsonKey(name: 'address') required final String address,
    @JsonKey(name: 'preferred_date') final DateTime? preferredDate,
    @JsonKey(name: 'comment') final String? comment,
    @JsonKey(name: 'status') final MeasureRequestStatusEnum? status,
  }) = _$MeasureRequestCreateRequestDtoImpl;

  factory _MeasureRequestCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$MeasureRequestCreateRequestDtoImpl.fromJson;

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
  MeasureRequestStatusEnum? get status;

  /// Create a copy of MeasureRequestCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestCreateRequestDtoImplCopyWith<
    _$MeasureRequestCreateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

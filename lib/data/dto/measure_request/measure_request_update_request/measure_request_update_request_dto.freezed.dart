// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'measure_request_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MeasureRequestUpdateRequestDto _$MeasureRequestUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _MeasureRequestUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$MeasureRequestUpdateRequestDto {
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'preferred_date')
  DateTime? get preferredDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  MeasureRequestStatusEnum? get status => throw _privateConstructorUsedError;

  /// Serializes this MeasureRequestUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeasureRequestUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeasureRequestUpdateRequestDtoCopyWith<MeasureRequestUpdateRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureRequestUpdateRequestDtoCopyWith<$Res> {
  factory $MeasureRequestUpdateRequestDtoCopyWith(
    MeasureRequestUpdateRequestDto value,
    $Res Function(MeasureRequestUpdateRequestDto) then,
  ) =
      _$MeasureRequestUpdateRequestDtoCopyWithImpl<
        $Res,
        MeasureRequestUpdateRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  });
}

/// @nodoc
class _$MeasureRequestUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends MeasureRequestUpdateRequestDto
>
    implements $MeasureRequestUpdateRequestDtoCopyWith<$Res> {
  _$MeasureRequestUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeasureRequestUpdateRequestDto
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
                      as MeasureRequestStatusEnum?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MeasureRequestUpdateRequestDtoImplCopyWith<$Res>
    implements $MeasureRequestUpdateRequestDtoCopyWith<$Res> {
  factory _$$MeasureRequestUpdateRequestDtoImplCopyWith(
    _$MeasureRequestUpdateRequestDtoImpl value,
    $Res Function(_$MeasureRequestUpdateRequestDtoImpl) then,
  ) = __$$MeasureRequestUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'preferred_date') DateTime? preferredDate,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'status') MeasureRequestStatusEnum? status,
  });
}

/// @nodoc
class __$$MeasureRequestUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$MeasureRequestUpdateRequestDtoCopyWithImpl<
          $Res,
          _$MeasureRequestUpdateRequestDtoImpl
        >
    implements _$$MeasureRequestUpdateRequestDtoImplCopyWith<$Res> {
  __$$MeasureRequestUpdateRequestDtoImplCopyWithImpl(
    _$MeasureRequestUpdateRequestDtoImpl _value,
    $Res Function(_$MeasureRequestUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MeasureRequestUpdateRequestDto
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
      _$MeasureRequestUpdateRequestDtoImpl(
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
                  as MeasureRequestStatusEnum?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MeasureRequestUpdateRequestDtoImpl
    implements _MeasureRequestUpdateRequestDto {
  const _$MeasureRequestUpdateRequestDtoImpl({
    @JsonKey(name: 'full_name') this.fullName,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'address') this.address,
    @JsonKey(name: 'preferred_date') this.preferredDate,
    @JsonKey(name: 'comment') this.comment,
    @JsonKey(name: 'status') this.status,
  });

  factory _$MeasureRequestUpdateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MeasureRequestUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'address')
  final String? address;
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
    return 'MeasureRequestUpdateRequestDto(fullName: $fullName, phone: $phone, address: $address, preferredDate: $preferredDate, comment: $comment, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeasureRequestUpdateRequestDtoImpl &&
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

  /// Create a copy of MeasureRequestUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeasureRequestUpdateRequestDtoImplCopyWith<
    _$MeasureRequestUpdateRequestDtoImpl
  >
  get copyWith =>
      __$$MeasureRequestUpdateRequestDtoImplCopyWithImpl<
        _$MeasureRequestUpdateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeasureRequestUpdateRequestDtoImplToJson(this);
  }
}

abstract class _MeasureRequestUpdateRequestDto
    implements MeasureRequestUpdateRequestDto {
  const factory _MeasureRequestUpdateRequestDto({
    @JsonKey(name: 'full_name') final String? fullName,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'preferred_date') final DateTime? preferredDate,
    @JsonKey(name: 'comment') final String? comment,
    @JsonKey(name: 'status') final MeasureRequestStatusEnum? status,
  }) = _$MeasureRequestUpdateRequestDtoImpl;

  factory _MeasureRequestUpdateRequestDto.fromJson(Map<String, dynamic> json) =
      _$MeasureRequestUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'preferred_date')
  DateTime? get preferredDate;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'status')
  MeasureRequestStatusEnum? get status;

  /// Create a copy of MeasureRequestUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeasureRequestUpdateRequestDtoImplCopyWith<
    _$MeasureRequestUpdateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_validation_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HTTPValidationErrorDto _$HTTPValidationErrorDtoFromJson(
  Map<String, dynamic> json,
) {
  return _HTTPValidationErrorDto.fromJson(json);
}

/// @nodoc
mixin _$HTTPValidationErrorDto {
  @JsonKey(name: 'detail')
  List<ValidationErrorDto> get detail => throw _privateConstructorUsedError;

  /// Serializes this HTTPValidationErrorDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HTTPValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HTTPValidationErrorDtoCopyWith<HTTPValidationErrorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HTTPValidationErrorDtoCopyWith<$Res> {
  factory $HTTPValidationErrorDtoCopyWith(
    HTTPValidationErrorDto value,
    $Res Function(HTTPValidationErrorDto) then,
  ) = _$HTTPValidationErrorDtoCopyWithImpl<$Res, HTTPValidationErrorDto>;
  @useResult
  $Res call({@JsonKey(name: 'detail') List<ValidationErrorDto> detail});
}

/// @nodoc
class _$HTTPValidationErrorDtoCopyWithImpl<
  $Res,
  $Val extends HTTPValidationErrorDto
>
    implements $HTTPValidationErrorDtoCopyWith<$Res> {
  _$HTTPValidationErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HTTPValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? detail = null}) {
    return _then(
      _value.copyWith(
            detail: null == detail
                ? _value.detail
                : detail // ignore: cast_nullable_to_non_nullable
                      as List<ValidationErrorDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HTTPValidationErrorDtoImplCopyWith<$Res>
    implements $HTTPValidationErrorDtoCopyWith<$Res> {
  factory _$$HTTPValidationErrorDtoImplCopyWith(
    _$HTTPValidationErrorDtoImpl value,
    $Res Function(_$HTTPValidationErrorDtoImpl) then,
  ) = __$$HTTPValidationErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'detail') List<ValidationErrorDto> detail});
}

/// @nodoc
class __$$HTTPValidationErrorDtoImplCopyWithImpl<$Res>
    extends
        _$HTTPValidationErrorDtoCopyWithImpl<$Res, _$HTTPValidationErrorDtoImpl>
    implements _$$HTTPValidationErrorDtoImplCopyWith<$Res> {
  __$$HTTPValidationErrorDtoImplCopyWithImpl(
    _$HTTPValidationErrorDtoImpl _value,
    $Res Function(_$HTTPValidationErrorDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HTTPValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? detail = null}) {
    return _then(
      _$HTTPValidationErrorDtoImpl(
        detail: null == detail
            ? _value._detail
            : detail // ignore: cast_nullable_to_non_nullable
                  as List<ValidationErrorDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HTTPValidationErrorDtoImpl implements _HTTPValidationErrorDto {
  const _$HTTPValidationErrorDtoImpl({
    @JsonKey(name: 'detail') required final List<ValidationErrorDto> detail,
  }) : _detail = detail;

  factory _$HTTPValidationErrorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HTTPValidationErrorDtoImplFromJson(json);

  final List<ValidationErrorDto> _detail;
  @override
  @JsonKey(name: 'detail')
  List<ValidationErrorDto> get detail {
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detail);
  }

  @override
  String toString() {
    return 'HTTPValidationErrorDto(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HTTPValidationErrorDtoImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HTTPValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HTTPValidationErrorDtoImplCopyWith<_$HTTPValidationErrorDtoImpl>
  get copyWith =>
      __$$HTTPValidationErrorDtoImplCopyWithImpl<_$HTTPValidationErrorDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HTTPValidationErrorDtoImplToJson(this);
  }
}

abstract class _HTTPValidationErrorDto implements HTTPValidationErrorDto {
  const factory _HTTPValidationErrorDto({
    @JsonKey(name: 'detail') required final List<ValidationErrorDto> detail,
  }) = _$HTTPValidationErrorDtoImpl;

  factory _HTTPValidationErrorDto.fromJson(Map<String, dynamic> json) =
      _$HTTPValidationErrorDtoImpl.fromJson;

  @override
  @JsonKey(name: 'detail')
  List<ValidationErrorDto> get detail;

  /// Create a copy of HTTPValidationErrorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HTTPValidationErrorDtoImplCopyWith<_$HTTPValidationErrorDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

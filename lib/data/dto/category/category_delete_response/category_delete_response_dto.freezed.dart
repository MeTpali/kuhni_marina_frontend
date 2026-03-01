// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryDeleteResponseDto _$CategoryDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDeleteResponseDto {
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDeleteResponseDtoCopyWith<CategoryDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDeleteResponseDtoCopyWith<$Res> {
  factory $CategoryDeleteResponseDtoCopyWith(
    CategoryDeleteResponseDto value,
    $Res Function(CategoryDeleteResponseDto) then,
  ) = _$CategoryDeleteResponseDtoCopyWithImpl<$Res, CategoryDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends CategoryDeleteResponseDto
>
    implements $CategoryDeleteResponseDtoCopyWith<$Res> {
  _$CategoryDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$CategoryDeleteResponseDtoImplCopyWith<$Res>
    implements $CategoryDeleteResponseDtoCopyWith<$Res> {
  factory _$$CategoryDeleteResponseDtoImplCopyWith(
    _$CategoryDeleteResponseDtoImpl value,
    $Res Function(_$CategoryDeleteResponseDtoImpl) then,
  ) = __$$CategoryDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$CategoryDeleteResponseDtoCopyWithImpl<
          $Res,
          _$CategoryDeleteResponseDtoImpl
        >
    implements _$$CategoryDeleteResponseDtoImplCopyWith<$Res> {
  __$$CategoryDeleteResponseDtoImplCopyWithImpl(
    _$CategoryDeleteResponseDtoImpl _value,
    $Res Function(_$CategoryDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null, Object? message = freezed}) {
    return _then(
      _$CategoryDeleteResponseDtoImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$CategoryDeleteResponseDtoImpl implements _CategoryDeleteResponseDto {
  const _$CategoryDeleteResponseDtoImpl({
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$CategoryDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryDeleteResponseDto(categoryId: $categoryId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteResponseDtoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, message);

  /// Create a copy of CategoryDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDeleteResponseDtoImplCopyWith<_$CategoryDeleteResponseDtoImpl>
  get copyWith =>
      __$$CategoryDeleteResponseDtoImplCopyWithImpl<
        _$CategoryDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDeleteResponseDtoImplToJson(this);
  }
}

abstract class _CategoryDeleteResponseDto implements CategoryDeleteResponseDto {
  const factory _CategoryDeleteResponseDto({
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryDeleteResponseDtoImpl;

  factory _CategoryDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDeleteResponseDtoImplCopyWith<_$CategoryDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

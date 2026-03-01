// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductResponseDto _$ProjectProductResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductResponseDto {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductResponseDtoCopyWith<ProjectProductResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductResponseDtoCopyWith<$Res> {
  factory $ProjectProductResponseDtoCopyWith(
    ProjectProductResponseDto value,
    $Res Function(ProjectProductResponseDto) then,
  ) = _$ProjectProductResponseDtoCopyWithImpl<$Res, ProjectProductResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectProductResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectProductResponseDto
>
    implements $ProjectProductResponseDtoCopyWith<$Res> {
  _$ProjectProductResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? productId = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as int,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProjectProductResponseDtoImplCopyWith<$Res>
    implements $ProjectProductResponseDtoCopyWith<$Res> {
  factory _$$ProjectProductResponseDtoImplCopyWith(
    _$ProjectProductResponseDtoImpl value,
    $Res Function(_$ProjectProductResponseDtoImpl) then,
  ) = __$$ProjectProductResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectProductResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectProductResponseDtoCopyWithImpl<
          $Res,
          _$ProjectProductResponseDtoImpl
        >
    implements _$$ProjectProductResponseDtoImplCopyWith<$Res> {
  __$$ProjectProductResponseDtoImplCopyWithImpl(
    _$ProjectProductResponseDtoImpl _value,
    $Res Function(_$ProjectProductResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? productId = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectProductResponseDtoImpl(
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as int,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
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
class _$ProjectProductResponseDtoImpl implements _ProjectProductResponseDto {
  const _$ProjectProductResponseDtoImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectProductResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectProductResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectProductResponseDto(projectId: $projectId, productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductResponseDtoImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, productId, message);

  /// Create a copy of ProjectProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductResponseDtoImplCopyWith<_$ProjectProductResponseDtoImpl>
  get copyWith =>
      __$$ProjectProductResponseDtoImplCopyWithImpl<
        _$ProjectProductResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductResponseDtoImplToJson(this);
  }
}

abstract class _ProjectProductResponseDto implements ProjectProductResponseDto {
  const factory _ProjectProductResponseDto({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectProductResponseDtoImpl;

  factory _ProjectProductResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectProductResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectProductResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductResponseDtoImplCopyWith<_$ProjectProductResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

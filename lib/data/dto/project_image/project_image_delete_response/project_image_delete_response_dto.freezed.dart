// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageDeleteResponseDto _$ProjectImageDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageDeleteResponseDto {
  @JsonKey(name: 'project_image_id')
  int get projectImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectImageDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageDeleteResponseDtoCopyWith<ProjectImageDeleteResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageDeleteResponseDtoCopyWith<$Res> {
  factory $ProjectImageDeleteResponseDtoCopyWith(
    ProjectImageDeleteResponseDto value,
    $Res Function(ProjectImageDeleteResponseDto) then,
  ) =
      _$ProjectImageDeleteResponseDtoCopyWithImpl<
        $Res,
        ProjectImageDeleteResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'project_image_id') int projectImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectImageDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectImageDeleteResponseDto
>
    implements $ProjectImageDeleteResponseDtoCopyWith<$Res> {
  _$ProjectImageDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectImageId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            projectImageId: null == projectImageId
                ? _value.projectImageId
                : projectImageId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProjectImageDeleteResponseDtoImplCopyWith<$Res>
    implements $ProjectImageDeleteResponseDtoCopyWith<$Res> {
  factory _$$ProjectImageDeleteResponseDtoImplCopyWith(
    _$ProjectImageDeleteResponseDtoImpl value,
    $Res Function(_$ProjectImageDeleteResponseDtoImpl) then,
  ) = __$$ProjectImageDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_image_id') int projectImageId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectImageDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectImageDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ProjectImageDeleteResponseDtoImpl
        >
    implements _$$ProjectImageDeleteResponseDtoImplCopyWith<$Res> {
  __$$ProjectImageDeleteResponseDtoImplCopyWithImpl(
    _$ProjectImageDeleteResponseDtoImpl _value,
    $Res Function(_$ProjectImageDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectImageId = null, Object? message = freezed}) {
    return _then(
      _$ProjectImageDeleteResponseDtoImpl(
        projectImageId: null == projectImageId
            ? _value.projectImageId
            : projectImageId // ignore: cast_nullable_to_non_nullable
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
class _$ProjectImageDeleteResponseDtoImpl
    implements _ProjectImageDeleteResponseDto {
  const _$ProjectImageDeleteResponseDtoImpl({
    @JsonKey(name: 'project_image_id') required this.projectImageId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectImageDeleteResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectImageDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'project_image_id')
  final int projectImageId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectImageDeleteResponseDto(projectImageId: $projectImageId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageDeleteResponseDtoImpl &&
            (identical(other.projectImageId, projectImageId) ||
                other.projectImageId == projectImageId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectImageId, message);

  /// Create a copy of ProjectImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageDeleteResponseDtoImplCopyWith<
    _$ProjectImageDeleteResponseDtoImpl
  >
  get copyWith =>
      __$$ProjectImageDeleteResponseDtoImplCopyWithImpl<
        _$ProjectImageDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ProjectImageDeleteResponseDto
    implements ProjectImageDeleteResponseDto {
  const factory _ProjectImageDeleteResponseDto({
    @JsonKey(name: 'project_image_id') required final int projectImageId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectImageDeleteResponseDtoImpl;

  factory _ProjectImageDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectImageDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'project_image_id')
  int get projectImageId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectImageDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageDeleteResponseDtoImplCopyWith<
    _$ProjectImageDeleteResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

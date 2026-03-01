// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectDeleteResponseDto _$ProjectDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectDeleteResponseDto {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDeleteResponseDtoCopyWith<ProjectDeleteResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDeleteResponseDtoCopyWith<$Res> {
  factory $ProjectDeleteResponseDtoCopyWith(
    ProjectDeleteResponseDto value,
    $Res Function(ProjectDeleteResponseDto) then,
  ) = _$ProjectDeleteResponseDtoCopyWithImpl<$Res, ProjectDeleteResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectDeleteResponseDto
>
    implements $ProjectDeleteResponseDtoCopyWith<$Res> {
  _$ProjectDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProjectDeleteResponseDtoImplCopyWith<$Res>
    implements $ProjectDeleteResponseDtoCopyWith<$Res> {
  factory _$$ProjectDeleteResponseDtoImplCopyWith(
    _$ProjectDeleteResponseDtoImpl value,
    $Res Function(_$ProjectDeleteResponseDtoImpl) then,
  ) = __$$ProjectDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ProjectDeleteResponseDtoImpl
        >
    implements _$$ProjectDeleteResponseDtoImplCopyWith<$Res> {
  __$$ProjectDeleteResponseDtoImplCopyWithImpl(
    _$ProjectDeleteResponseDtoImpl _value,
    $Res Function(_$ProjectDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectId = null, Object? message = freezed}) {
    return _then(
      _$ProjectDeleteResponseDtoImpl(
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
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
class _$ProjectDeleteResponseDtoImpl implements _ProjectDeleteResponseDto {
  const _$ProjectDeleteResponseDtoImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectDeleteResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectDeleteResponseDto(projectId: $projectId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDeleteResponseDtoImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, message);

  /// Create a copy of ProjectDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDeleteResponseDtoImplCopyWith<_$ProjectDeleteResponseDtoImpl>
  get copyWith =>
      __$$ProjectDeleteResponseDtoImplCopyWithImpl<
        _$ProjectDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ProjectDeleteResponseDto implements ProjectDeleteResponseDto {
  const factory _ProjectDeleteResponseDto({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectDeleteResponseDtoImpl;

  factory _ProjectDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDeleteResponseDtoImplCopyWith<_$ProjectDeleteResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

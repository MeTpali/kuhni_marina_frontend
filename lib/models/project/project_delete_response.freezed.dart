// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectDeleteResponse _$ProjectDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectDeleteResponse {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDeleteResponseCopyWith<ProjectDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDeleteResponseCopyWith<$Res> {
  factory $ProjectDeleteResponseCopyWith(
    ProjectDeleteResponse value,
    $Res Function(ProjectDeleteResponse) then,
  ) = _$ProjectDeleteResponseCopyWithImpl<$Res, ProjectDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectDeleteResponseCopyWithImpl<
  $Res,
  $Val extends ProjectDeleteResponse
>
    implements $ProjectDeleteResponseCopyWith<$Res> {
  _$ProjectDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDeleteResponse
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
abstract class _$$ProjectDeleteResponseImplCopyWith<$Res>
    implements $ProjectDeleteResponseCopyWith<$Res> {
  factory _$$ProjectDeleteResponseImplCopyWith(
    _$ProjectDeleteResponseImpl value,
    $Res Function(_$ProjectDeleteResponseImpl) then,
  ) = __$$ProjectDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectDeleteResponseCopyWithImpl<$Res, _$ProjectDeleteResponseImpl>
    implements _$$ProjectDeleteResponseImplCopyWith<$Res> {
  __$$ProjectDeleteResponseImplCopyWithImpl(
    _$ProjectDeleteResponseImpl _value,
    $Res Function(_$ProjectDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectId = null, Object? message = freezed}) {
    return _then(
      _$ProjectDeleteResponseImpl(
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
class _$ProjectDeleteResponseImpl implements _ProjectDeleteResponse {
  const _$ProjectDeleteResponseImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectDeleteResponse(projectId: $projectId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDeleteResponseImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, message);

  /// Create a copy of ProjectDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDeleteResponseImplCopyWith<_$ProjectDeleteResponseImpl>
  get copyWith =>
      __$$ProjectDeleteResponseImplCopyWithImpl<_$ProjectDeleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDeleteResponseImplToJson(this);
  }
}

abstract class _ProjectDeleteResponse implements ProjectDeleteResponse {
  const factory _ProjectDeleteResponse({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectDeleteResponseImpl;

  factory _ProjectDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDeleteResponseImplCopyWith<_$ProjectDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

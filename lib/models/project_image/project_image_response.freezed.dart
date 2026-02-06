// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageResponse _$ProjectImageResponseFromJson(Map<String, dynamic> json) {
  return _ProjectImageResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main')
  bool? get isMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectImageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageResponseCopyWith<ProjectImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageResponseCopyWith<$Res> {
  factory $ProjectImageResponseCopyWith(
    ProjectImageResponse value,
    $Res Function(ProjectImageResponse) then,
  ) = _$ProjectImageResponseCopyWithImpl<$Res, ProjectImageResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectImageResponseCopyWithImpl<
  $Res,
  $Val extends ProjectImageResponse
>
    implements $ProjectImageResponseCopyWith<$Res> {
  _$ProjectImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            isMain: freezed == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                      as bool?,
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
abstract class _$$ProjectImageResponseImplCopyWith<$Res>
    implements $ProjectImageResponseCopyWith<$Res> {
  factory _$$ProjectImageResponseImplCopyWith(
    _$ProjectImageResponseImpl value,
    $Res Function(_$ProjectImageResponseImpl) then,
  ) = __$$ProjectImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectImageResponseImplCopyWithImpl<$Res>
    extends _$ProjectImageResponseCopyWithImpl<$Res, _$ProjectImageResponseImpl>
    implements _$$ProjectImageResponseImplCopyWith<$Res> {
  __$$ProjectImageResponseImplCopyWithImpl(
    _$ProjectImageResponseImpl _value,
    $Res Function(_$ProjectImageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectImageResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        isMain: freezed == isMain
            ? _value.isMain
            : isMain // ignore: cast_nullable_to_non_nullable
                  as bool?,
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
class _$ProjectImageResponseImpl implements _ProjectImageResponse {
  const _$ProjectImageResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'is_main') this.isMain = false,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImageResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'is_main')
  final bool? isMain;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectImageResponse(id: $id, projectId: $projectId, imageUrl: $imageUrl, isMain: $isMain, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isMain, isMain) || other.isMain == isMain) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, projectId, imageUrl, isMain, message);

  /// Create a copy of ProjectImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageResponseImplCopyWith<_$ProjectImageResponseImpl>
  get copyWith =>
      __$$ProjectImageResponseImplCopyWithImpl<_$ProjectImageResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageResponseImplToJson(this);
  }
}

abstract class _ProjectImageResponse implements ProjectImageResponse {
  const factory _ProjectImageResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'is_main') final bool? isMain,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectImageResponseImpl;

  factory _ProjectImageResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectImageResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'is_main')
  bool? get isMain;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageResponseImplCopyWith<_$ProjectImageResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

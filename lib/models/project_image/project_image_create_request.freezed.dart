// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageCreateRequest _$ProjectImageCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageCreateRequest {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main')
  bool? get isMain => throw _privateConstructorUsedError;

  /// Serializes this ProjectImageCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageCreateRequestCopyWith<ProjectImageCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageCreateRequestCopyWith<$Res> {
  factory $ProjectImageCreateRequestCopyWith(
    ProjectImageCreateRequest value,
    $Res Function(ProjectImageCreateRequest) then,
  ) = _$ProjectImageCreateRequestCopyWithImpl<$Res, ProjectImageCreateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
  });
}

/// @nodoc
class _$ProjectImageCreateRequestCopyWithImpl<
  $Res,
  $Val extends ProjectImageCreateRequest
>
    implements $ProjectImageCreateRequestCopyWith<$Res> {
  _$ProjectImageCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectImageCreateRequestImplCopyWith<$Res>
    implements $ProjectImageCreateRequestCopyWith<$Res> {
  factory _$$ProjectImageCreateRequestImplCopyWith(
    _$ProjectImageCreateRequestImpl value,
    $Res Function(_$ProjectImageCreateRequestImpl) then,
  ) = __$$ProjectImageCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool? isMain,
  });
}

/// @nodoc
class __$$ProjectImageCreateRequestImplCopyWithImpl<$Res>
    extends
        _$ProjectImageCreateRequestCopyWithImpl<
          $Res,
          _$ProjectImageCreateRequestImpl
        >
    implements _$$ProjectImageCreateRequestImplCopyWith<$Res> {
  __$$ProjectImageCreateRequestImplCopyWithImpl(
    _$ProjectImageCreateRequestImpl _value,
    $Res Function(_$ProjectImageCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = freezed,
  }) {
    return _then(
      _$ProjectImageCreateRequestImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImageCreateRequestImpl implements _ProjectImageCreateRequest {
  const _$ProjectImageCreateRequestImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'is_main') this.isMain = false,
  });

  factory _$ProjectImageCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImageCreateRequestImplFromJson(json);

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
  String toString() {
    return 'ProjectImageCreateRequest(projectId: $projectId, imageUrl: $imageUrl, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageCreateRequestImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, imageUrl, isMain);

  /// Create a copy of ProjectImageCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageCreateRequestImplCopyWith<_$ProjectImageCreateRequestImpl>
  get copyWith =>
      __$$ProjectImageCreateRequestImplCopyWithImpl<
        _$ProjectImageCreateRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageCreateRequestImplToJson(this);
  }
}

abstract class _ProjectImageCreateRequest implements ProjectImageCreateRequest {
  const factory _ProjectImageCreateRequest({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'is_main') final bool? isMain,
  }) = _$ProjectImageCreateRequestImpl;

  factory _ProjectImageCreateRequest.fromJson(Map<String, dynamic> json) =
      _$ProjectImageCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'is_main')
  bool? get isMain;

  /// Create a copy of ProjectImageCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageCreateRequestImplCopyWith<_$ProjectImageCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProjectImage {
  int get id => throw _privateConstructorUsedError;
  int get projectId => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageCopyWith<ProjectImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageCopyWith<$Res> {
  factory $ProjectImageCopyWith(
    ProjectImage value,
    $Res Function(ProjectImage) then,
  ) = _$ProjectImageCopyWithImpl<$Res, ProjectImage>;
  @useResult
  $Res call({int id, int projectId, String imageUrl, bool isMain});
}

/// @nodoc
class _$ProjectImageCopyWithImpl<$Res, $Val extends ProjectImage>
    implements $ProjectImageCopyWith<$Res> {
  _$ProjectImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = null,
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
            isMain: null == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectImageImplCopyWith<$Res>
    implements $ProjectImageCopyWith<$Res> {
  factory _$$ProjectImageImplCopyWith(
    _$ProjectImageImpl value,
    $Res Function(_$ProjectImageImpl) then,
  ) = __$$ProjectImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int projectId, String imageUrl, bool isMain});
}

/// @nodoc
class __$$ProjectImageImplCopyWithImpl<$Res>
    extends _$ProjectImageCopyWithImpl<$Res, _$ProjectImageImpl>
    implements _$$ProjectImageImplCopyWith<$Res> {
  __$$ProjectImageImplCopyWithImpl(
    _$ProjectImageImpl _value,
    $Res Function(_$ProjectImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? projectId = null,
    Object? imageUrl = null,
    Object? isMain = null,
  }) {
    return _then(
      _$ProjectImageImpl(
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
        isMain: null == isMain
            ? _value.isMain
            : isMain // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ProjectImageImpl implements _ProjectImage {
  const _$ProjectImageImpl({
    required this.id,
    required this.projectId,
    required this.imageUrl,
    this.isMain = false,
  });

  @override
  final int id;
  @override
  final int projectId;
  @override
  final String imageUrl;
  @override
  @JsonKey()
  final bool isMain;

  @override
  String toString() {
    return 'ProjectImage(id: $id, projectId: $projectId, imageUrl: $imageUrl, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, projectId, imageUrl, isMain);

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageImplCopyWith<_$ProjectImageImpl> get copyWith =>
      __$$ProjectImageImplCopyWithImpl<_$ProjectImageImpl>(this, _$identity);
}

abstract class _ProjectImage implements ProjectImage {
  const factory _ProjectImage({
    required final int id,
    required final int projectId,
    required final String imageUrl,
    final bool isMain,
  }) = _$ProjectImageImpl;

  @override
  int get id;
  @override
  int get projectId;
  @override
  String get imageUrl;
  @override
  bool get isMain;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageImplCopyWith<_$ProjectImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_create_bulk_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageCreateBulkRequestDto _$ProjectImageCreateBulkRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageCreateBulkRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageCreateBulkRequestDto {
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequestDto> get images =>
      throw _privateConstructorUsedError;

  /// Serializes this ProjectImageCreateBulkRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageCreateBulkRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageCreateBulkRequestDtoCopyWith<ProjectImageCreateBulkRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageCreateBulkRequestDtoCopyWith<$Res> {
  factory $ProjectImageCreateBulkRequestDtoCopyWith(
    ProjectImageCreateBulkRequestDto value,
    $Res Function(ProjectImageCreateBulkRequestDto) then,
  ) =
      _$ProjectImageCreateBulkRequestDtoCopyWithImpl<
        $Res,
        ProjectImageCreateBulkRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'images') List<ProjectImageCreateRequestDto> images,
  });
}

/// @nodoc
class _$ProjectImageCreateBulkRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProjectImageCreateBulkRequestDto
>
    implements $ProjectImageCreateBulkRequestDtoCopyWith<$Res> {
  _$ProjectImageCreateBulkRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageCreateBulkRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = null}) {
    return _then(
      _value.copyWith(
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageCreateRequestDto>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectImageCreateBulkRequestDtoImplCopyWith<$Res>
    implements $ProjectImageCreateBulkRequestDtoCopyWith<$Res> {
  factory _$$ProjectImageCreateBulkRequestDtoImplCopyWith(
    _$ProjectImageCreateBulkRequestDtoImpl value,
    $Res Function(_$ProjectImageCreateBulkRequestDtoImpl) then,
  ) = __$$ProjectImageCreateBulkRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'images') List<ProjectImageCreateRequestDto> images,
  });
}

/// @nodoc
class __$$ProjectImageCreateBulkRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectImageCreateBulkRequestDtoCopyWithImpl<
          $Res,
          _$ProjectImageCreateBulkRequestDtoImpl
        >
    implements _$$ProjectImageCreateBulkRequestDtoImplCopyWith<$Res> {
  __$$ProjectImageCreateBulkRequestDtoImplCopyWithImpl(
    _$ProjectImageCreateBulkRequestDtoImpl _value,
    $Res Function(_$ProjectImageCreateBulkRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageCreateBulkRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = null}) {
    return _then(
      _$ProjectImageCreateBulkRequestDtoImpl(
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageCreateRequestDto>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImageCreateBulkRequestDtoImpl
    implements _ProjectImageCreateBulkRequestDto {
  const _$ProjectImageCreateBulkRequestDtoImpl({
    @JsonKey(name: 'images')
    required final List<ProjectImageCreateRequestDto> images,
  }) : _images = images;

  factory _$ProjectImageCreateBulkRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectImageCreateBulkRequestDtoImplFromJson(json);

  final List<ProjectImageCreateRequestDto> _images;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequestDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProjectImageCreateBulkRequestDto(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageCreateBulkRequestDtoImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of ProjectImageCreateBulkRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageCreateBulkRequestDtoImplCopyWith<
    _$ProjectImageCreateBulkRequestDtoImpl
  >
  get copyWith =>
      __$$ProjectImageCreateBulkRequestDtoImplCopyWithImpl<
        _$ProjectImageCreateBulkRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageCreateBulkRequestDtoImplToJson(this);
  }
}

abstract class _ProjectImageCreateBulkRequestDto
    implements ProjectImageCreateBulkRequestDto {
  const factory _ProjectImageCreateBulkRequestDto({
    @JsonKey(name: 'images')
    required final List<ProjectImageCreateRequestDto> images,
  }) = _$ProjectImageCreateBulkRequestDtoImpl;

  factory _ProjectImageCreateBulkRequestDto.fromJson(
    Map<String, dynamic> json,
  ) = _$ProjectImageCreateBulkRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequestDto> get images;

  /// Create a copy of ProjectImageCreateBulkRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageCreateBulkRequestDtoImplCopyWith<
    _$ProjectImageCreateBulkRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

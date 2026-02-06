// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_create_bulk_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageCreateBulkRequest _$ProjectImageCreateBulkRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageCreateBulkRequest.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageCreateBulkRequest {
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequest> get images =>
      throw _privateConstructorUsedError;

  /// Serializes this ProjectImageCreateBulkRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageCreateBulkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageCreateBulkRequestCopyWith<ProjectImageCreateBulkRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageCreateBulkRequestCopyWith<$Res> {
  factory $ProjectImageCreateBulkRequestCopyWith(
    ProjectImageCreateBulkRequest value,
    $Res Function(ProjectImageCreateBulkRequest) then,
  ) =
      _$ProjectImageCreateBulkRequestCopyWithImpl<
        $Res,
        ProjectImageCreateBulkRequest
      >;
  @useResult
  $Res call({@JsonKey(name: 'images') List<ProjectImageCreateRequest> images});
}

/// @nodoc
class _$ProjectImageCreateBulkRequestCopyWithImpl<
  $Res,
  $Val extends ProjectImageCreateBulkRequest
>
    implements $ProjectImageCreateBulkRequestCopyWith<$Res> {
  _$ProjectImageCreateBulkRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageCreateBulkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = null}) {
    return _then(
      _value.copyWith(
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageCreateRequest>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectImageCreateBulkRequestImplCopyWith<$Res>
    implements $ProjectImageCreateBulkRequestCopyWith<$Res> {
  factory _$$ProjectImageCreateBulkRequestImplCopyWith(
    _$ProjectImageCreateBulkRequestImpl value,
    $Res Function(_$ProjectImageCreateBulkRequestImpl) then,
  ) = __$$ProjectImageCreateBulkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'images') List<ProjectImageCreateRequest> images});
}

/// @nodoc
class __$$ProjectImageCreateBulkRequestImplCopyWithImpl<$Res>
    extends
        _$ProjectImageCreateBulkRequestCopyWithImpl<
          $Res,
          _$ProjectImageCreateBulkRequestImpl
        >
    implements _$$ProjectImageCreateBulkRequestImplCopyWith<$Res> {
  __$$ProjectImageCreateBulkRequestImplCopyWithImpl(
    _$ProjectImageCreateBulkRequestImpl _value,
    $Res Function(_$ProjectImageCreateBulkRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageCreateBulkRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = null}) {
    return _then(
      _$ProjectImageCreateBulkRequestImpl(
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageCreateRequest>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImageCreateBulkRequestImpl
    implements _ProjectImageCreateBulkRequest {
  const _$ProjectImageCreateBulkRequestImpl({
    @JsonKey(name: 'images')
    required final List<ProjectImageCreateRequest> images,
  }) : _images = images;

  factory _$ProjectImageCreateBulkRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectImageCreateBulkRequestImplFromJson(json);

  final List<ProjectImageCreateRequest> _images;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequest> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProjectImageCreateBulkRequest(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageCreateBulkRequestImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of ProjectImageCreateBulkRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageCreateBulkRequestImplCopyWith<
    _$ProjectImageCreateBulkRequestImpl
  >
  get copyWith =>
      __$$ProjectImageCreateBulkRequestImplCopyWithImpl<
        _$ProjectImageCreateBulkRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageCreateBulkRequestImplToJson(this);
  }
}

abstract class _ProjectImageCreateBulkRequest
    implements ProjectImageCreateBulkRequest {
  const factory _ProjectImageCreateBulkRequest({
    @JsonKey(name: 'images')
    required final List<ProjectImageCreateRequest> images,
  }) = _$ProjectImageCreateBulkRequestImpl;

  factory _ProjectImageCreateBulkRequest.fromJson(Map<String, dynamic> json) =
      _$ProjectImageCreateBulkRequestImpl.fromJson;

  @override
  @JsonKey(name: 'images')
  List<ProjectImageCreateRequest> get images;

  /// Create a copy of ProjectImageCreateBulkRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageCreateBulkRequestImplCopyWith<
    _$ProjectImageCreateBulkRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

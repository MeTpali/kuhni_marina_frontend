// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectDetailResponse _$ProjectDetailResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectDetailResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ProjectImageResponse> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDetailResponseCopyWith<ProjectDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailResponseCopyWith<$Res> {
  factory $ProjectDetailResponseCopyWith(
    ProjectDetailResponse value,
    $Res Function(ProjectDetailResponse) then,
  ) = _$ProjectDetailResponseCopyWithImpl<$Res, ProjectDetailResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'images') List<ProjectImageResponse> images,
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectDetailResponseCopyWithImpl<
  $Res,
  $Val extends ProjectDetailResponse
>
    implements $ProjectDetailResponseCopyWith<$Res> {
  _$ProjectDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? createdAt = null,
    Object? images = null,
    Object? productIds = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageResponse>,
            productIds: null == productIds
                ? _value.productIds
                : productIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
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
abstract class _$$ProjectDetailResponseImplCopyWith<$Res>
    implements $ProjectDetailResponseCopyWith<$Res> {
  factory _$$ProjectDetailResponseImplCopyWith(
    _$ProjectDetailResponseImpl value,
    $Res Function(_$ProjectDetailResponseImpl) then,
  ) = __$$ProjectDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'images') List<ProjectImageResponse> images,
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectDetailResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectDetailResponseCopyWithImpl<$Res, _$ProjectDetailResponseImpl>
    implements _$$ProjectDetailResponseImplCopyWith<$Res> {
  __$$ProjectDetailResponseImplCopyWithImpl(
    _$ProjectDetailResponseImpl _value,
    $Res Function(_$ProjectDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? createdAt = null,
    Object? images = null,
    Object? productIds = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectDetailResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageResponse>,
        productIds: null == productIds
            ? _value._productIds
            : productIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
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
class _$ProjectDetailResponseImpl implements _ProjectDetailResponse {
  const _$ProjectDetailResponseImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'images') final List<ProjectImageResponse> images = const [],
    @JsonKey(name: 'product_ids') final List<int> productIds = const [],
    @JsonKey(name: 'message') this.message,
  }) : _images = images,
       _productIds = productIds;

  factory _$ProjectDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final List<ProjectImageResponse> _images;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<int> _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectDetailResponse(id: $id, name: $name, description: $description, location: $location, createdAt: $createdAt, images: $images, productIds: $productIds, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(
              other._productIds,
              _productIds,
            ) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    location,
    createdAt,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_productIds),
    message,
  );

  /// Create a copy of ProjectDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailResponseImplCopyWith<_$ProjectDetailResponseImpl>
  get copyWith =>
      __$$ProjectDetailResponseImplCopyWithImpl<_$ProjectDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDetailResponseImplToJson(this);
  }
}

abstract class _ProjectDetailResponse implements ProjectDetailResponse {
  const factory _ProjectDetailResponse({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'location') final String? location,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'images') final List<ProjectImageResponse> images,
    @JsonKey(name: 'product_ids') final List<int> productIds,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectDetailResponseImpl;

  factory _ProjectDetailResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageResponse> get images;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDetailResponseImplCopyWith<_$ProjectDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

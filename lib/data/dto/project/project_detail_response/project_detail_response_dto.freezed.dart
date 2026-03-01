// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_detail_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectDetailResponseDto _$ProjectDetailResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectDetailResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectDetailResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ProjectImageResponseDto> get images =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectDetailResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectDetailResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectDetailResponseDtoCopyWith<ProjectDetailResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailResponseDtoCopyWith<$Res> {
  factory $ProjectDetailResponseDtoCopyWith(
    ProjectDetailResponseDto value,
    $Res Function(ProjectDetailResponseDto) then,
  ) = _$ProjectDetailResponseDtoCopyWithImpl<$Res, ProjectDetailResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'images') List<ProjectImageResponseDto> images,
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectDetailResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectDetailResponseDto
>
    implements $ProjectDetailResponseDtoCopyWith<$Res> {
  _$ProjectDetailResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectDetailResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
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
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageResponseDto>,
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
abstract class _$$ProjectDetailResponseDtoImplCopyWith<$Res>
    implements $ProjectDetailResponseDtoCopyWith<$Res> {
  factory _$$ProjectDetailResponseDtoImplCopyWith(
    _$ProjectDetailResponseDtoImpl value,
    $Res Function(_$ProjectDetailResponseDtoImpl) then,
  ) = __$$ProjectDetailResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'images') List<ProjectImageResponseDto> images,
    @JsonKey(name: 'product_ids') List<int> productIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectDetailResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectDetailResponseDtoCopyWithImpl<
          $Res,
          _$ProjectDetailResponseDtoImpl
        >
    implements _$$ProjectDetailResponseDtoImplCopyWith<$Res> {
  __$$ProjectDetailResponseDtoImplCopyWithImpl(
    _$ProjectDetailResponseDtoImpl _value,
    $Res Function(_$ProjectDetailResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectDetailResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? images = null,
    Object? productIds = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectDetailResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageResponseDto>,
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
class _$ProjectDetailResponseDtoImpl implements _ProjectDetailResponseDto {
  const _$ProjectDetailResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'images')
    final List<ProjectImageResponseDto> images = const [],
    @JsonKey(name: 'product_ids') final List<int> productIds = const [],
    @JsonKey(name: 'message') this.message,
  }) : _images = images,
       _productIds = productIds;

  factory _$ProjectDetailResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectDetailResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'location')
  final String? location;
  final List<ProjectImageResponseDto> _images;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageResponseDto> get images {
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
    return 'ProjectDetailResponseDto(id: $id, name: $name, createdAt: $createdAt, description: $description, location: $location, images: $images, productIds: $productIds, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    createdAt,
    description,
    location,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_productIds),
    message,
  );

  /// Create a copy of ProjectDetailResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailResponseDtoImplCopyWith<_$ProjectDetailResponseDtoImpl>
  get copyWith =>
      __$$ProjectDetailResponseDtoImplCopyWithImpl<
        _$ProjectDetailResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectDetailResponseDtoImplToJson(this);
  }
}

abstract class _ProjectDetailResponseDto implements ProjectDetailResponseDto {
  const factory _ProjectDetailResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'location') final String? location,
    @JsonKey(name: 'images') final List<ProjectImageResponseDto> images,
    @JsonKey(name: 'product_ids') final List<int> productIds,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectDetailResponseDtoImpl;

  factory _ProjectDetailResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectDetailResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'images')
  List<ProjectImageResponseDto> get images;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectDetailResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectDetailResponseDtoImplCopyWith<_$ProjectDetailResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

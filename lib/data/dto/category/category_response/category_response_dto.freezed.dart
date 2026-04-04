// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryResponseDto _$CategoryResponseDtoFromJson(Map<String, dynamic> json) {
  return _CategoryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseDtoCopyWith<CategoryResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseDtoCopyWith<$Res> {
  factory $CategoryResponseDtoCopyWith(
    CategoryResponseDto value,
    $Res Function(CategoryResponseDto) then,
  ) = _$CategoryResponseDtoCopyWithImpl<$Res, CategoryResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryResponseDtoCopyWithImpl<$Res, $Val extends CategoryResponseDto>
    implements $CategoryResponseDtoCopyWith<$Res> {
  _$CategoryResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
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
            slug: null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as CategoryTypeDto,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$CategoryResponseDtoImplCopyWith<$Res>
    implements $CategoryResponseDtoCopyWith<$Res> {
  factory _$$CategoryResponseDtoImplCopyWith(
    _$CategoryResponseDtoImpl value,
    $Res Function(_$CategoryResponseDtoImpl) then,
  ) = __$$CategoryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'slug') String slug,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryResponseDtoImplCopyWithImpl<$Res>
    extends _$CategoryResponseDtoCopyWithImpl<$Res, _$CategoryResponseDtoImpl>
    implements _$$CategoryResponseDtoImplCopyWith<$Res> {
  __$$CategoryResponseDtoImplCopyWithImpl(
    _$CategoryResponseDtoImpl _value,
    $Res Function(_$CategoryResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? type = null,
    Object? parentId = freezed,
    Object? imageUrl = freezed,
    Object? isActive = null,
    Object? message = freezed,
  }) {
    return _then(
      _$CategoryResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: null == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as CategoryTypeDto,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$CategoryResponseDtoImpl implements _CategoryResponseDto {
  const _$CategoryResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'slug') required this.slug,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'image_url') this.imageUrl,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'message') this.message,
  });

  factory _$CategoryResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'slug')
  final String slug;
  @override
  @JsonKey(name: 'type')
  final CategoryTypeDto type;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryResponseDto(id: $id, name: $name, slug: $slug, type: $type, parentId: $parentId, imageUrl: $imageUrl, isActive: $isActive, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    type,
    parentId,
    imageUrl,
    isActive,
    message,
  );

  /// Create a copy of CategoryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseDtoImplCopyWith<_$CategoryResponseDtoImpl> get copyWith =>
      __$$CategoryResponseDtoImplCopyWithImpl<_$CategoryResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseDtoImplToJson(this);
  }
}

abstract class _CategoryResponseDto implements CategoryResponseDto {
  const factory _CategoryResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'slug') required final String slug,
    @JsonKey(name: 'type') required final CategoryTypeDto type,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryResponseDtoImpl;

  factory _CategoryResponseDto.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'slug')
  String get slug;
  @override
  @JsonKey(name: 'type')
  CategoryTypeDto get type;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseDtoImplCopyWith<_$CategoryResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

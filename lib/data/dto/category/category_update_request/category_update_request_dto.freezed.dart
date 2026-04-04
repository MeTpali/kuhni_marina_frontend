// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryUpdateRequestDto _$CategoryUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryUpdateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this CategoryUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryUpdateRequestDtoCopyWith<CategoryUpdateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryUpdateRequestDtoCopyWith<$Res> {
  factory $CategoryUpdateRequestDtoCopyWith(
    CategoryUpdateRequestDto value,
    $Res Function(CategoryUpdateRequestDto) then,
  ) = _$CategoryUpdateRequestDtoCopyWithImpl<$Res, CategoryUpdateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
  });
}

/// @nodoc
class _$CategoryUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends CategoryUpdateRequestDto
>
    implements $CategoryUpdateRequestDtoCopyWith<$Res> {
  _$CategoryUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as CategoryTypeDto,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryUpdateRequestDtoImplCopyWith<$Res>
    implements $CategoryUpdateRequestDtoCopyWith<$Res> {
  factory _$$CategoryUpdateRequestDtoImplCopyWith(
    _$CategoryUpdateRequestDtoImpl value,
    $Res Function(_$CategoryUpdateRequestDtoImpl) then,
  ) = __$$CategoryUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
  });
}

/// @nodoc
class __$$CategoryUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$CategoryUpdateRequestDtoCopyWithImpl<
          $Res,
          _$CategoryUpdateRequestDtoImpl
        >
    implements _$$CategoryUpdateRequestDtoImplCopyWith<$Res> {
  __$$CategoryUpdateRequestDtoImplCopyWithImpl(
    _$CategoryUpdateRequestDtoImpl _value,
    $Res Function(_$CategoryUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _$CategoryUpdateRequestDtoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as CategoryTypeDto,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryUpdateRequestDtoImpl implements _CategoryUpdateRequestDto {
  const _$CategoryUpdateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'is_active') this.isActive,
    @JsonKey(name: 'image_url') this.imageUrl,
  });

  factory _$CategoryUpdateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final CategoryTypeDto type;
  @override
  @JsonKey(name: 'slug')
  final String? slug;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'CategoryUpdateRequestDto(name: $name, type: $type, slug: $slug, parentId: $parentId, isActive: $isActive, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, slug, parentId, isActive, imageUrl);

  /// Create a copy of CategoryUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryUpdateRequestDtoImplCopyWith<_$CategoryUpdateRequestDtoImpl>
  get copyWith =>
      __$$CategoryUpdateRequestDtoImplCopyWithImpl<
        _$CategoryUpdateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateRequestDtoImplToJson(this);
  }
}

abstract class _CategoryUpdateRequestDto implements CategoryUpdateRequestDto {
  const factory _CategoryUpdateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'type') required final CategoryTypeDto type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'is_active') final bool? isActive,
    @JsonKey(name: 'image_url') final String? imageUrl,
  }) = _$CategoryUpdateRequestDtoImpl;

  factory _CategoryUpdateRequestDto.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  CategoryTypeDto get type;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of CategoryUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryUpdateRequestDtoImplCopyWith<_$CategoryUpdateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

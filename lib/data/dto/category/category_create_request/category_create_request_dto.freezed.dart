// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryCreateRequestDto _$CategoryCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryCreateRequestDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryTypeDto get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this CategoryCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCreateRequestDtoCopyWith<CategoryCreateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCreateRequestDtoCopyWith<$Res> {
  factory $CategoryCreateRequestDtoCopyWith(
    CategoryCreateRequestDto value,
    $Res Function(CategoryCreateRequestDto) then,
  ) = _$CategoryCreateRequestDtoCopyWithImpl<$Res, CategoryCreateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class _$CategoryCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends CategoryCreateRequestDto
>
    implements $CategoryCreateRequestDtoCopyWith<$Res> {
  _$CategoryCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = null,
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
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryCreateRequestDtoImplCopyWith<$Res>
    implements $CategoryCreateRequestDtoCopyWith<$Res> {
  factory _$$CategoryCreateRequestDtoImplCopyWith(
    _$CategoryCreateRequestDtoImpl value,
    $Res Function(_$CategoryCreateRequestDtoImpl) then,
  ) = __$$CategoryCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryTypeDto type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class __$$CategoryCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$CategoryCreateRequestDtoCopyWithImpl<
          $Res,
          _$CategoryCreateRequestDtoImpl
        >
    implements _$$CategoryCreateRequestDtoImplCopyWith<$Res> {
  __$$CategoryCreateRequestDtoImplCopyWithImpl(
    _$CategoryCreateRequestDtoImpl _value,
    $Res Function(_$CategoryCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = null,
  }) {
    return _then(
      _$CategoryCreateRequestDtoImpl(
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
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryCreateRequestDtoImpl implements _CategoryCreateRequestDto {
  const _$CategoryCreateRequestDtoImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$CategoryCreateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCreateRequestDtoImplFromJson(json);

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
  final bool isActive;

  @override
  String toString() {
    return 'CategoryCreateRequestDto(name: $name, type: $type, slug: $slug, parentId: $parentId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCreateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, slug, parentId, isActive);

  /// Create a copy of CategoryCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCreateRequestDtoImplCopyWith<_$CategoryCreateRequestDtoImpl>
  get copyWith =>
      __$$CategoryCreateRequestDtoImplCopyWithImpl<
        _$CategoryCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCreateRequestDtoImplToJson(this);
  }
}

abstract class _CategoryCreateRequestDto implements CategoryCreateRequestDto {
  const factory _CategoryCreateRequestDto({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'type') required final CategoryTypeDto type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'is_active') final bool isActive,
  }) = _$CategoryCreateRequestDtoImpl;

  factory _CategoryCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$CategoryCreateRequestDtoImpl.fromJson;

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
  bool get isActive;

  /// Create a copy of CategoryCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCreateRequestDtoImplCopyWith<_$CategoryCreateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

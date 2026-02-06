// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryCreateRequest _$CategoryCreateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryCreateRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;

  /// Serializes this CategoryCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCreateRequestCopyWith<CategoryCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCreateRequestCopyWith<$Res> {
  factory $CategoryCreateRequestCopyWith(
    CategoryCreateRequest value,
    $Res Function(CategoryCreateRequest) then,
  ) = _$CategoryCreateRequestCopyWithImpl<$Res, CategoryCreateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class _$CategoryCreateRequestCopyWithImpl<
  $Res,
  $Val extends CategoryCreateRequest
>
    implements $CategoryCreateRequestCopyWith<$Res> {
  _$CategoryCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCreateRequest
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
                      as CategoryType,
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
abstract class _$$CategoryCreateRequestImplCopyWith<$Res>
    implements $CategoryCreateRequestCopyWith<$Res> {
  factory _$$CategoryCreateRequestImplCopyWith(
    _$CategoryCreateRequestImpl value,
    $Res Function(_$CategoryCreateRequestImpl) then,
  ) = __$$CategoryCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool isActive,
  });
}

/// @nodoc
class __$$CategoryCreateRequestImplCopyWithImpl<$Res>
    extends
        _$CategoryCreateRequestCopyWithImpl<$Res, _$CategoryCreateRequestImpl>
    implements _$$CategoryCreateRequestImplCopyWith<$Res> {
  __$$CategoryCreateRequestImplCopyWithImpl(
    _$CategoryCreateRequestImpl _value,
    $Res Function(_$CategoryCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryCreateRequest
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
      _$CategoryCreateRequestImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as CategoryType,
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
class _$CategoryCreateRequestImpl implements _CategoryCreateRequest {
  const _$CategoryCreateRequestImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'is_active') this.isActive = true,
  });

  factory _$CategoryCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCreateRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final CategoryType type;
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
    return 'CategoryCreateRequest(name: $name, type: $type, slug: $slug, parentId: $parentId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCreateRequestImpl &&
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

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCreateRequestImplCopyWith<_$CategoryCreateRequestImpl>
  get copyWith =>
      __$$CategoryCreateRequestImplCopyWithImpl<_$CategoryCreateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCreateRequestImplToJson(this);
  }
}

abstract class _CategoryCreateRequest implements CategoryCreateRequest {
  const factory _CategoryCreateRequest({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'type') required final CategoryType type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'is_active') final bool isActive,
  }) = _$CategoryCreateRequestImpl;

  factory _CategoryCreateRequest.fromJson(Map<String, dynamic> json) =
      _$CategoryCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  CategoryType get type;
  @override
  @JsonKey(name: 'slug')
  String? get slug;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCreateRequestImplCopyWith<_$CategoryCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

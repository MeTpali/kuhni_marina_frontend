// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryUpdateRequest _$CategoryUpdateRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryUpdateRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  CategoryType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'slug')
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this CategoryUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryUpdateRequestCopyWith<CategoryUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryUpdateRequestCopyWith<$Res> {
  factory $CategoryUpdateRequestCopyWith(
    CategoryUpdateRequest value,
    $Res Function(CategoryUpdateRequest) then,
  ) = _$CategoryUpdateRequestCopyWithImpl<$Res, CategoryUpdateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class _$CategoryUpdateRequestCopyWithImpl<
  $Res,
  $Val extends CategoryUpdateRequest
>
    implements $CategoryUpdateRequestCopyWith<$Res> {
  _$CategoryUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = freezed,
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
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CategoryUpdateRequestImplCopyWith<$Res>
    implements $CategoryUpdateRequestCopyWith<$Res> {
  factory _$$CategoryUpdateRequestImplCopyWith(
    _$CategoryUpdateRequestImpl value,
    $Res Function(_$CategoryUpdateRequestImpl) then,
  ) = __$$CategoryUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'type') CategoryType type,
    @JsonKey(name: 'slug') String? slug,
    @JsonKey(name: 'parent_id') int? parentId,
    @JsonKey(name: 'is_active') bool? isActive,
  });
}

/// @nodoc
class __$$CategoryUpdateRequestImplCopyWithImpl<$Res>
    extends
        _$CategoryUpdateRequestCopyWithImpl<$Res, _$CategoryUpdateRequestImpl>
    implements _$$CategoryUpdateRequestImplCopyWith<$Res> {
  __$$CategoryUpdateRequestImplCopyWithImpl(
    _$CategoryUpdateRequestImpl _value,
    $Res Function(_$CategoryUpdateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? slug = freezed,
    Object? parentId = freezed,
    Object? isActive = freezed,
  }) {
    return _then(
      _$CategoryUpdateRequestImpl(
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
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryUpdateRequestImpl implements _CategoryUpdateRequest {
  const _$CategoryUpdateRequestImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'type') required this.type,
    @JsonKey(name: 'slug') this.slug,
    @JsonKey(name: 'parent_id') this.parentId,
    @JsonKey(name: 'is_active') this.isActive,
  });

  factory _$CategoryUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateRequestImplFromJson(json);

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
  final bool? isActive;

  @override
  String toString() {
    return 'CategoryUpdateRequest(name: $name, type: $type, slug: $slug, parentId: $parentId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateRequestImpl &&
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

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryUpdateRequestImplCopyWith<_$CategoryUpdateRequestImpl>
  get copyWith =>
      __$$CategoryUpdateRequestImplCopyWithImpl<_$CategoryUpdateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateRequestImplToJson(this);
  }
}

abstract class _CategoryUpdateRequest implements CategoryUpdateRequest {
  const factory _CategoryUpdateRequest({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'type') required final CategoryType type,
    @JsonKey(name: 'slug') final String? slug,
    @JsonKey(name: 'parent_id') final int? parentId,
    @JsonKey(name: 'is_active') final bool? isActive,
  }) = _$CategoryUpdateRequestImpl;

  factory _CategoryUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateRequestImpl.fromJson;

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
  bool? get isActive;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryUpdateRequestImplCopyWith<_$CategoryUpdateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectCreateRequest _$ProjectCreateRequestFromJson(Map<String, dynamic> json) {
  return _ProjectCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$ProjectCreateRequest {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;

  /// Serializes this ProjectCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCreateRequestCopyWith<ProjectCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCreateRequestCopyWith<$Res> {
  factory $ProjectCreateRequestCopyWith(
    ProjectCreateRequest value,
    $Res Function(ProjectCreateRequest) then,
  ) = _$ProjectCreateRequestCopyWithImpl<$Res, ProjectCreateRequest>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  });
}

/// @nodoc
class _$ProjectCreateRequestCopyWithImpl<
  $Res,
  $Val extends ProjectCreateRequest
>
    implements $ProjectCreateRequestCopyWith<$Res> {
  _$ProjectCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectCreateRequestImplCopyWith<$Res>
    implements $ProjectCreateRequestCopyWith<$Res> {
  factory _$$ProjectCreateRequestImplCopyWith(
    _$ProjectCreateRequestImpl value,
    $Res Function(_$ProjectCreateRequestImpl) then,
  ) = __$$ProjectCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  });
}

/// @nodoc
class __$$ProjectCreateRequestImplCopyWithImpl<$Res>
    extends _$ProjectCreateRequestCopyWithImpl<$Res, _$ProjectCreateRequestImpl>
    implements _$$ProjectCreateRequestImplCopyWith<$Res> {
  __$$ProjectCreateRequestImplCopyWithImpl(
    _$ProjectCreateRequestImpl _value,
    $Res Function(_$ProjectCreateRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$ProjectCreateRequestImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectCreateRequestImpl implements _ProjectCreateRequest {
  const _$ProjectCreateRequestImpl({
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'location') this.location,
  });

  factory _$ProjectCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectCreateRequestImplFromJson(json);

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
  String toString() {
    return 'ProjectCreateRequest(name: $name, description: $description, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCreateRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, location);

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCreateRequestImplCopyWith<_$ProjectCreateRequestImpl>
  get copyWith =>
      __$$ProjectCreateRequestImplCopyWithImpl<_$ProjectCreateRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectCreateRequestImplToJson(this);
  }
}

abstract class _ProjectCreateRequest implements ProjectCreateRequest {
  const factory _ProjectCreateRequest({
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'location') final String? location,
  }) = _$ProjectCreateRequestImpl;

  factory _ProjectCreateRequest.fromJson(Map<String, dynamic> json) =
      _$ProjectCreateRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'location')
  String? get location;

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCreateRequestImplCopyWith<_$ProjectCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

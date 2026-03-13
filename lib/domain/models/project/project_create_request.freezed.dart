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

/// @nodoc
mixin _$ProjectCreateRequest {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

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
  $Res call({String name, String? description, String? location});
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
  $Res call({String name, String? description, String? location});
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

class _$ProjectCreateRequestImpl implements _ProjectCreateRequest {
  const _$ProjectCreateRequestImpl({
    required this.name,
    this.description,
    this.location,
  });

  @override
  final String name;
  @override
  final String? description;
  @override
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
}

abstract class _ProjectCreateRequest implements ProjectCreateRequest {
  const factory _ProjectCreateRequest({
    required final String name,
    final String? description,
    final String? location,
  }) = _$ProjectCreateRequestImpl;

  @override
  String get name;
  @override
  String? get description;
  @override
  String? get location;

  /// Create a copy of ProjectCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCreateRequestImplCopyWith<_$ProjectCreateRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_update_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectUpdateRequestDto _$ProjectUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectUpdateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectUpdateRequestDto {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;

  /// Serializes this ProjectUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectUpdateRequestDtoCopyWith<ProjectUpdateRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectUpdateRequestDtoCopyWith<$Res> {
  factory $ProjectUpdateRequestDtoCopyWith(
    ProjectUpdateRequestDto value,
    $Res Function(ProjectUpdateRequestDto) then,
  ) = _$ProjectUpdateRequestDtoCopyWithImpl<$Res, ProjectUpdateRequestDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  });
}

/// @nodoc
class _$ProjectUpdateRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProjectUpdateRequestDto
>
    implements $ProjectUpdateRequestDtoCopyWith<$Res> {
  _$ProjectUpdateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
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
abstract class _$$ProjectUpdateRequestDtoImplCopyWith<$Res>
    implements $ProjectUpdateRequestDtoCopyWith<$Res> {
  factory _$$ProjectUpdateRequestDtoImplCopyWith(
    _$ProjectUpdateRequestDtoImpl value,
    $Res Function(_$ProjectUpdateRequestDtoImpl) then,
  ) = __$$ProjectUpdateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
  });
}

/// @nodoc
class __$$ProjectUpdateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectUpdateRequestDtoCopyWithImpl<
          $Res,
          _$ProjectUpdateRequestDtoImpl
        >
    implements _$$ProjectUpdateRequestDtoImplCopyWith<$Res> {
  __$$ProjectUpdateRequestDtoImplCopyWithImpl(
    _$ProjectUpdateRequestDtoImpl _value,
    $Res Function(_$ProjectUpdateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _$ProjectUpdateRequestDtoImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$ProjectUpdateRequestDtoImpl implements _ProjectUpdateRequestDto {
  const _$ProjectUpdateRequestDtoImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'location') this.location,
  });

  factory _$ProjectUpdateRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectUpdateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'location')
  final String? location;

  @override
  String toString() {
    return 'ProjectUpdateRequestDto(name: $name, description: $description, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectUpdateRequestDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, location);

  /// Create a copy of ProjectUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectUpdateRequestDtoImplCopyWith<_$ProjectUpdateRequestDtoImpl>
  get copyWith =>
      __$$ProjectUpdateRequestDtoImplCopyWithImpl<
        _$ProjectUpdateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectUpdateRequestDtoImplToJson(this);
  }
}

abstract class _ProjectUpdateRequestDto implements ProjectUpdateRequestDto {
  const factory _ProjectUpdateRequestDto({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'location') final String? location,
  }) = _$ProjectUpdateRequestDtoImpl;

  factory _ProjectUpdateRequestDto.fromJson(Map<String, dynamic> json) =
      _$ProjectUpdateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'location')
  String? get location;

  /// Create a copy of ProjectUpdateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectUpdateRequestDtoImplCopyWith<_$ProjectUpdateRequestDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

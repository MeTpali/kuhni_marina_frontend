// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectResponseDto _$ProjectResponseDtoFromJson(Map<String, dynamic> json) {
  return _ProjectResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectResponseDto {
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
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectResponseDtoCopyWith<ProjectResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectResponseDtoCopyWith<$Res> {
  factory $ProjectResponseDtoCopyWith(
    ProjectResponseDto value,
    $Res Function(ProjectResponseDto) then,
  ) = _$ProjectResponseDtoCopyWithImpl<$Res, ProjectResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectResponseDtoCopyWithImpl<$Res, $Val extends ProjectResponseDto>
    implements $ProjectResponseDtoCopyWith<$Res> {
  _$ProjectResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
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
abstract class _$$ProjectResponseDtoImplCopyWith<$Res>
    implements $ProjectResponseDtoCopyWith<$Res> {
  factory _$$ProjectResponseDtoImplCopyWith(
    _$ProjectResponseDtoImpl value,
    $Res Function(_$ProjectResponseDtoImpl) then,
  ) = __$$ProjectResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectResponseDtoImplCopyWithImpl<$Res>
    extends _$ProjectResponseDtoCopyWithImpl<$Res, _$ProjectResponseDtoImpl>
    implements _$$ProjectResponseDtoImplCopyWith<$Res> {
  __$$ProjectResponseDtoImplCopyWithImpl(
    _$ProjectResponseDtoImpl _value,
    $Res Function(_$ProjectResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectResponseDtoImpl(
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
class _$ProjectResponseDtoImpl implements _ProjectResponseDto {
  const _$ProjectResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectResponseDtoImplFromJson(json);

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
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectResponseDto(id: $id, name: $name, createdAt: $createdAt, description: $description, location: $location, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
    message,
  );

  /// Create a copy of ProjectResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectResponseDtoImplCopyWith<_$ProjectResponseDtoImpl> get copyWith =>
      __$$ProjectResponseDtoImplCopyWithImpl<_$ProjectResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectResponseDtoImplToJson(this);
  }
}

abstract class _ProjectResponseDto implements ProjectResponseDto {
  const factory _ProjectResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'location') final String? location,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectResponseDtoImpl;

  factory _ProjectResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectResponseDtoImpl.fromJson;

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
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectResponseDtoImplCopyWith<_$ProjectResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

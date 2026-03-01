// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_delete_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductDeleteResponseDto _$ProjectProductDeleteResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductDeleteResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductDeleteResponseDto {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductDeleteResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductDeleteResponseDtoCopyWith<ProjectProductDeleteResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductDeleteResponseDtoCopyWith<$Res> {
  factory $ProjectProductDeleteResponseDtoCopyWith(
    ProjectProductDeleteResponseDto value,
    $Res Function(ProjectProductDeleteResponseDto) then,
  ) =
      _$ProjectProductDeleteResponseDtoCopyWithImpl<
        $Res,
        ProjectProductDeleteResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectProductDeleteResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectProductDeleteResponseDto
>
    implements $ProjectProductDeleteResponseDtoCopyWith<$Res> {
  _$ProjectProductDeleteResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? productId = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            projectId: null == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as int,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$ProjectProductDeleteResponseDtoImplCopyWith<$Res>
    implements $ProjectProductDeleteResponseDtoCopyWith<$Res> {
  factory _$$ProjectProductDeleteResponseDtoImplCopyWith(
    _$ProjectProductDeleteResponseDtoImpl value,
    $Res Function(_$ProjectProductDeleteResponseDtoImpl) then,
  ) = __$$ProjectProductDeleteResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectProductDeleteResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectProductDeleteResponseDtoCopyWithImpl<
          $Res,
          _$ProjectProductDeleteResponseDtoImpl
        >
    implements _$$ProjectProductDeleteResponseDtoImplCopyWith<$Res> {
  __$$ProjectProductDeleteResponseDtoImplCopyWithImpl(
    _$ProjectProductDeleteResponseDtoImpl _value,
    $Res Function(_$ProjectProductDeleteResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? productId = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectProductDeleteResponseDtoImpl(
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as int,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$ProjectProductDeleteResponseDtoImpl
    implements _ProjectProductDeleteResponseDto {
  const _$ProjectProductDeleteResponseDtoImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectProductDeleteResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectProductDeleteResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectProductDeleteResponseDto(projectId: $projectId, productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductDeleteResponseDtoImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, productId, message);

  /// Create a copy of ProjectProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductDeleteResponseDtoImplCopyWith<
    _$ProjectProductDeleteResponseDtoImpl
  >
  get copyWith =>
      __$$ProjectProductDeleteResponseDtoImplCopyWithImpl<
        _$ProjectProductDeleteResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductDeleteResponseDtoImplToJson(this);
  }
}

abstract class _ProjectProductDeleteResponseDto
    implements ProjectProductDeleteResponseDto {
  const factory _ProjectProductDeleteResponseDto({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectProductDeleteResponseDtoImpl;

  factory _ProjectProductDeleteResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectProductDeleteResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectProductDeleteResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductDeleteResponseDtoImplCopyWith<
    _$ProjectProductDeleteResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

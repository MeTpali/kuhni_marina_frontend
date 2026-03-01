// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_create_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductCreateRequestDto _$ProjectProductCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductCreateRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductCreateRequestDto {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductCreateRequestDtoCopyWith<ProjectProductCreateRequestDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductCreateRequestDtoCopyWith<$Res> {
  factory $ProjectProductCreateRequestDtoCopyWith(
    ProjectProductCreateRequestDto value,
    $Res Function(ProjectProductCreateRequestDto) then,
  ) =
      _$ProjectProductCreateRequestDtoCopyWithImpl<
        $Res,
        ProjectProductCreateRequestDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
  });
}

/// @nodoc
class _$ProjectProductCreateRequestDtoCopyWithImpl<
  $Res,
  $Val extends ProjectProductCreateRequestDto
>
    implements $ProjectProductCreateRequestDtoCopyWith<$Res> {
  _$ProjectProductCreateRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectId = null, Object? productId = null}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectProductCreateRequestDtoImplCopyWith<$Res>
    implements $ProjectProductCreateRequestDtoCopyWith<$Res> {
  factory _$$ProjectProductCreateRequestDtoImplCopyWith(
    _$ProjectProductCreateRequestDtoImpl value,
    $Res Function(_$ProjectProductCreateRequestDtoImpl) then,
  ) = __$$ProjectProductCreateRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
  });
}

/// @nodoc
class __$$ProjectProductCreateRequestDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectProductCreateRequestDtoCopyWithImpl<
          $Res,
          _$ProjectProductCreateRequestDtoImpl
        >
    implements _$$ProjectProductCreateRequestDtoImplCopyWith<$Res> {
  __$$ProjectProductCreateRequestDtoImplCopyWithImpl(
    _$ProjectProductCreateRequestDtoImpl _value,
    $Res Function(_$ProjectProductCreateRequestDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? projectId = null, Object? productId = null}) {
    return _then(
      _$ProjectProductCreateRequestDtoImpl(
        projectId: null == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as int,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectProductCreateRequestDtoImpl
    implements _ProjectProductCreateRequestDto {
  const _$ProjectProductCreateRequestDtoImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'product_id') required this.productId,
  });

  factory _$ProjectProductCreateRequestDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectProductCreateRequestDtoImplFromJson(json);

  @override
  @JsonKey(name: 'project_id')
  final int projectId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;

  @override
  String toString() {
    return 'ProjectProductCreateRequestDto(projectId: $projectId, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductCreateRequestDtoImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, productId);

  /// Create a copy of ProjectProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductCreateRequestDtoImplCopyWith<
    _$ProjectProductCreateRequestDtoImpl
  >
  get copyWith =>
      __$$ProjectProductCreateRequestDtoImplCopyWithImpl<
        _$ProjectProductCreateRequestDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductCreateRequestDtoImplToJson(this);
  }
}

abstract class _ProjectProductCreateRequestDto
    implements ProjectProductCreateRequestDto {
  const factory _ProjectProductCreateRequestDto({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'product_id') required final int productId,
  }) = _$ProjectProductCreateRequestDtoImpl;

  factory _ProjectProductCreateRequestDto.fromJson(Map<String, dynamic> json) =
      _$ProjectProductCreateRequestDtoImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;

  /// Create a copy of ProjectProductCreateRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductCreateRequestDtoImplCopyWith<
    _$ProjectProductCreateRequestDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

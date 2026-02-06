// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductDeleteResponse _$ProjectProductDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductDeleteResponse {
  @JsonKey(name: 'project_id')
  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductDeleteResponseCopyWith<ProjectProductDeleteResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductDeleteResponseCopyWith<$Res> {
  factory $ProjectProductDeleteResponseCopyWith(
    ProjectProductDeleteResponse value,
    $Res Function(ProjectProductDeleteResponse) then,
  ) =
      _$ProjectProductDeleteResponseCopyWithImpl<
        $Res,
        ProjectProductDeleteResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectProductDeleteResponseCopyWithImpl<
  $Res,
  $Val extends ProjectProductDeleteResponse
>
    implements $ProjectProductDeleteResponseCopyWith<$Res> {
  _$ProjectProductDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductDeleteResponse
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
abstract class _$$ProjectProductDeleteResponseImplCopyWith<$Res>
    implements $ProjectProductDeleteResponseCopyWith<$Res> {
  factory _$$ProjectProductDeleteResponseImplCopyWith(
    _$ProjectProductDeleteResponseImpl value,
    $Res Function(_$ProjectProductDeleteResponseImpl) then,
  ) = __$$ProjectProductDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'project_id') int projectId,
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectProductDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectProductDeleteResponseCopyWithImpl<
          $Res,
          _$ProjectProductDeleteResponseImpl
        >
    implements _$$ProjectProductDeleteResponseImplCopyWith<$Res> {
  __$$ProjectProductDeleteResponseImplCopyWithImpl(
    _$ProjectProductDeleteResponseImpl _value,
    $Res Function(_$ProjectProductDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? productId = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectProductDeleteResponseImpl(
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
class _$ProjectProductDeleteResponseImpl
    implements _ProjectProductDeleteResponse {
  const _$ProjectProductDeleteResponseImpl({
    @JsonKey(name: 'project_id') required this.projectId,
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$ProjectProductDeleteResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectProductDeleteResponseImplFromJson(json);

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
    return 'ProjectProductDeleteResponse(projectId: $projectId, productId: $productId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductDeleteResponseImpl &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectId, productId, message);

  /// Create a copy of ProjectProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductDeleteResponseImplCopyWith<
    _$ProjectProductDeleteResponseImpl
  >
  get copyWith =>
      __$$ProjectProductDeleteResponseImplCopyWithImpl<
        _$ProjectProductDeleteResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductDeleteResponseImplToJson(this);
  }
}

abstract class _ProjectProductDeleteResponse
    implements ProjectProductDeleteResponse {
  const factory _ProjectProductDeleteResponse({
    @JsonKey(name: 'project_id') required final int projectId,
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectProductDeleteResponseImpl;

  factory _ProjectProductDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectProductDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'project_id')
  int get projectId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectProductDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductDeleteResponseImplCopyWith<
    _$ProjectProductDeleteResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

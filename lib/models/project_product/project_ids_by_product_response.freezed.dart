// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_ids_by_product_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectIdsByProductResponse _$ProjectIdsByProductResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectIdsByProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectIdsByProductResponse {
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_ids')
  List<int> get projectIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectIdsByProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectIdsByProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectIdsByProductResponseCopyWith<ProjectIdsByProductResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectIdsByProductResponseCopyWith<$Res> {
  factory $ProjectIdsByProductResponseCopyWith(
    ProjectIdsByProductResponse value,
    $Res Function(ProjectIdsByProductResponse) then,
  ) =
      _$ProjectIdsByProductResponseCopyWithImpl<
        $Res,
        ProjectIdsByProductResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'project_ids') List<int> projectIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectIdsByProductResponseCopyWithImpl<
  $Res,
  $Val extends ProjectIdsByProductResponse
>
    implements $ProjectIdsByProductResponseCopyWith<$Res> {
  _$ProjectIdsByProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectIdsByProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? projectIds = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as int,
            projectIds: null == projectIds
                ? _value.projectIds
                : projectIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
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
abstract class _$$ProjectIdsByProductResponseImplCopyWith<$Res>
    implements $ProjectIdsByProductResponseCopyWith<$Res> {
  factory _$$ProjectIdsByProductResponseImplCopyWith(
    _$ProjectIdsByProductResponseImpl value,
    $Res Function(_$ProjectIdsByProductResponseImpl) then,
  ) = __$$ProjectIdsByProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'product_id') int productId,
    @JsonKey(name: 'project_ids') List<int> projectIds,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectIdsByProductResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectIdsByProductResponseCopyWithImpl<
          $Res,
          _$ProjectIdsByProductResponseImpl
        >
    implements _$$ProjectIdsByProductResponseImplCopyWith<$Res> {
  __$$ProjectIdsByProductResponseImplCopyWithImpl(
    _$ProjectIdsByProductResponseImpl _value,
    $Res Function(_$ProjectIdsByProductResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectIdsByProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? projectIds = null,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectIdsByProductResponseImpl(
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as int,
        projectIds: null == projectIds
            ? _value._projectIds
            : projectIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
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
class _$ProjectIdsByProductResponseImpl
    implements _ProjectIdsByProductResponse {
  const _$ProjectIdsByProductResponseImpl({
    @JsonKey(name: 'product_id') required this.productId,
    @JsonKey(name: 'project_ids') required final List<int> projectIds,
    @JsonKey(name: 'message') this.message,
  }) : _projectIds = projectIds;

  factory _$ProjectIdsByProductResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectIdsByProductResponseImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int productId;
  final List<int> _projectIds;
  @override
  @JsonKey(name: 'project_ids')
  List<int> get projectIds {
    if (_projectIds is EqualUnmodifiableListView) return _projectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectIds);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectIdsByProductResponse(productId: $productId, projectIds: $projectIds, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectIdsByProductResponseImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(
              other._projectIds,
              _projectIds,
            ) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    productId,
    const DeepCollectionEquality().hash(_projectIds),
    message,
  );

  /// Create a copy of ProjectIdsByProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectIdsByProductResponseImplCopyWith<_$ProjectIdsByProductResponseImpl>
  get copyWith =>
      __$$ProjectIdsByProductResponseImplCopyWithImpl<
        _$ProjectIdsByProductResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectIdsByProductResponseImplToJson(this);
  }
}

abstract class _ProjectIdsByProductResponse
    implements ProjectIdsByProductResponse {
  const factory _ProjectIdsByProductResponse({
    @JsonKey(name: 'product_id') required final int productId,
    @JsonKey(name: 'project_ids') required final List<int> projectIds,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectIdsByProductResponseImpl;

  factory _ProjectIdsByProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectIdsByProductResponseImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'project_ids')
  List<int> get projectIds;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectIdsByProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectIdsByProductResponseImplCopyWith<_$ProjectIdsByProductResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectListResponse _$ProjectListResponseFromJson(Map<String, dynamic> json) {
  return _ProjectListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectListResponse {
  @JsonKey(name: 'items')
  List<ProjectResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectListResponseCopyWith<ProjectListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListResponseCopyWith<$Res> {
  factory $ProjectListResponseCopyWith(
    ProjectListResponse value,
    $Res Function(ProjectListResponse) then,
  ) = _$ProjectListResponseCopyWithImpl<$Res, ProjectListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectListResponseCopyWithImpl<$Res, $Val extends ProjectListResponse>
    implements $ProjectListResponseCopyWith<$Res> {
  _$ProjectListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectResponse>,
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
abstract class _$$ProjectListResponseImplCopyWith<$Res>
    implements $ProjectListResponseCopyWith<$Res> {
  factory _$$ProjectListResponseImplCopyWith(
    _$ProjectListResponseImpl value,
    $Res Function(_$ProjectListResponseImpl) then,
  ) = __$$ProjectListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectListResponseImplCopyWithImpl<$Res>
    extends _$ProjectListResponseCopyWithImpl<$Res, _$ProjectListResponseImpl>
    implements _$$ProjectListResponseImplCopyWith<$Res> {
  __$$ProjectListResponseImplCopyWithImpl(
    _$ProjectListResponseImpl _value,
    $Res Function(_$ProjectListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProjectListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectResponse>,
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
class _$ProjectListResponseImpl implements _ProjectListResponse {
  const _$ProjectListResponseImpl({
    @JsonKey(name: 'items') required final List<ProjectResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectListResponseImplFromJson(json);

  final List<ProjectResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    message,
  );

  /// Create a copy of ProjectListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectListResponseImplCopyWith<_$ProjectListResponseImpl> get copyWith =>
      __$$ProjectListResponseImplCopyWithImpl<_$ProjectListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectListResponseImplToJson(this);
  }
}

abstract class _ProjectListResponse implements ProjectListResponse {
  const factory _ProjectListResponse({
    @JsonKey(name: 'items') required final List<ProjectResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectListResponseImpl;

  factory _ProjectListResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectListResponseImplCopyWith<_$ProjectListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

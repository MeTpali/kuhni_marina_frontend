// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageListResponse _$ProjectImageListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageListResponse {
  @JsonKey(name: 'items')
  List<ProjectImageResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectImageListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageListResponseCopyWith<ProjectImageListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageListResponseCopyWith<$Res> {
  factory $ProjectImageListResponseCopyWith(
    ProjectImageListResponse value,
    $Res Function(ProjectImageListResponse) then,
  ) = _$ProjectImageListResponseCopyWithImpl<$Res, ProjectImageListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectImageResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectImageListResponseCopyWithImpl<
  $Res,
  $Val extends ProjectImageListResponse
>
    implements $ProjectImageListResponseCopyWith<$Res> {
  _$ProjectImageListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageResponse>,
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
abstract class _$$ProjectImageListResponseImplCopyWith<$Res>
    implements $ProjectImageListResponseCopyWith<$Res> {
  factory _$$ProjectImageListResponseImplCopyWith(
    _$ProjectImageListResponseImpl value,
    $Res Function(_$ProjectImageListResponseImpl) then,
  ) = __$$ProjectImageListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectImageResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectImageListResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectImageListResponseCopyWithImpl<
          $Res,
          _$ProjectImageListResponseImpl
        >
    implements _$$ProjectImageListResponseImplCopyWith<$Res> {
  __$$ProjectImageListResponseImplCopyWithImpl(
    _$ProjectImageListResponseImpl _value,
    $Res Function(_$ProjectImageListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProjectImageListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageResponse>,
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
class _$ProjectImageListResponseImpl implements _ProjectImageListResponse {
  const _$ProjectImageListResponseImpl({
    @JsonKey(name: 'items') required final List<ProjectImageResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectImageListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImageListResponseImplFromJson(json);

  final List<ProjectImageResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectImageResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectImageListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageListResponseImpl &&
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

  /// Create a copy of ProjectImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageListResponseImplCopyWith<_$ProjectImageListResponseImpl>
  get copyWith =>
      __$$ProjectImageListResponseImplCopyWithImpl<
        _$ProjectImageListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageListResponseImplToJson(this);
  }
}

abstract class _ProjectImageListResponse implements ProjectImageListResponse {
  const factory _ProjectImageListResponse({
    @JsonKey(name: 'items') required final List<ProjectImageResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectImageListResponseImpl;

  factory _ProjectImageListResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectImageListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectImageResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectImageListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageListResponseImplCopyWith<_$ProjectImageListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

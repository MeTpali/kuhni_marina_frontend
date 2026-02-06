// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductListResponse _$ProjectProductListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductListResponse {
  @JsonKey(name: 'items')
  List<ProjectProductResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductListResponseCopyWith<ProjectProductListResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductListResponseCopyWith<$Res> {
  factory $ProjectProductListResponseCopyWith(
    ProjectProductListResponse value,
    $Res Function(ProjectProductListResponse) then,
  ) =
      _$ProjectProductListResponseCopyWithImpl<
        $Res,
        ProjectProductListResponse
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectProductResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectProductListResponseCopyWithImpl<
  $Res,
  $Val extends ProjectProductListResponse
>
    implements $ProjectProductListResponseCopyWith<$Res> {
  _$ProjectProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectProductResponse>,
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
abstract class _$$ProjectProductListResponseImplCopyWith<$Res>
    implements $ProjectProductListResponseCopyWith<$Res> {
  factory _$$ProjectProductListResponseImplCopyWith(
    _$ProjectProductListResponseImpl value,
    $Res Function(_$ProjectProductListResponseImpl) then,
  ) = __$$ProjectProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectProductResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectProductListResponseImplCopyWithImpl<$Res>
    extends
        _$ProjectProductListResponseCopyWithImpl<
          $Res,
          _$ProjectProductListResponseImpl
        >
    implements _$$ProjectProductListResponseImplCopyWith<$Res> {
  __$$ProjectProductListResponseImplCopyWithImpl(
    _$ProjectProductListResponseImpl _value,
    $Res Function(_$ProjectProductListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProjectProductListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectProductResponse>,
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
class _$ProjectProductListResponseImpl implements _ProjectProductListResponse {
  const _$ProjectProductListResponseImpl({
    @JsonKey(name: 'items') required final List<ProjectProductResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectProductListResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectProductListResponseImplFromJson(json);

  final List<ProjectProductResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectProductResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectProductListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductListResponseImpl &&
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

  /// Create a copy of ProjectProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductListResponseImplCopyWith<_$ProjectProductListResponseImpl>
  get copyWith =>
      __$$ProjectProductListResponseImplCopyWithImpl<
        _$ProjectProductListResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductListResponseImplToJson(this);
  }
}

abstract class _ProjectProductListResponse
    implements ProjectProductListResponse {
  const factory _ProjectProductListResponse({
    @JsonKey(name: 'items') required final List<ProjectProductResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectProductListResponseImpl;

  factory _ProjectProductListResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectProductListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectProductResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductListResponseImplCopyWith<_$ProjectProductListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

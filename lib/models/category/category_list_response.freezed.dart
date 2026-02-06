// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  return _CategoryListResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponse {
  @JsonKey(name: 'items')
  List<CategoryTreeNode> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListResponseCopyWith<CategoryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseCopyWith<$Res> {
  factory $CategoryListResponseCopyWith(
    CategoryListResponse value,
    $Res Function(CategoryListResponse) then,
  ) = _$CategoryListResponseCopyWithImpl<$Res, CategoryListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<CategoryTreeNode> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryListResponseCopyWithImpl<
  $Res,
  $Val extends CategoryListResponse
>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<CategoryTreeNode>,
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
abstract class _$$CategoryListResponseImplCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseImplCopyWith(
    _$CategoryListResponseImpl value,
    $Res Function(_$CategoryListResponseImpl) then,
  ) = __$$CategoryListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<CategoryTreeNode> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryListResponseImplCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res, _$CategoryListResponseImpl>
    implements _$$CategoryListResponseImplCopyWith<$Res> {
  __$$CategoryListResponseImplCopyWithImpl(
    _$CategoryListResponseImpl _value,
    $Res Function(_$CategoryListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$CategoryListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<CategoryTreeNode>,
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
class _$CategoryListResponseImpl implements _CategoryListResponse {
  const _$CategoryListResponseImpl({
    @JsonKey(name: 'items') required final List<CategoryTreeNode> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$CategoryListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseImplFromJson(json);

  final List<CategoryTreeNode> _items;
  @override
  @JsonKey(name: 'items')
  List<CategoryTreeNode> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseImpl &&
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

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
  get copyWith =>
      __$$CategoryListResponseImplCopyWithImpl<_$CategoryListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseImplToJson(this);
  }
}

abstract class _CategoryListResponse implements CategoryListResponse {
  const factory _CategoryListResponse({
    @JsonKey(name: 'items') required final List<CategoryTreeNode> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryListResponseImpl;

  factory _CategoryListResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<CategoryTreeNode> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewListResponse _$ReviewListResponseFromJson(Map<String, dynamic> json) {
  return _ReviewListResponse.fromJson(json);
}

/// @nodoc
mixin _$ReviewListResponse {
  @JsonKey(name: 'items')
  List<ReviewResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ReviewListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewListResponseCopyWith<ReviewListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListResponseCopyWith<$Res> {
  factory $ReviewListResponseCopyWith(
    ReviewListResponse value,
    $Res Function(ReviewListResponse) then,
  ) = _$ReviewListResponseCopyWithImpl<$Res, ReviewListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ReviewResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ReviewListResponseCopyWithImpl<$Res, $Val extends ReviewListResponse>
    implements $ReviewListResponseCopyWith<$Res> {
  _$ReviewListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ReviewResponse>,
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
abstract class _$$ReviewListResponseImplCopyWith<$Res>
    implements $ReviewListResponseCopyWith<$Res> {
  factory _$$ReviewListResponseImplCopyWith(
    _$ReviewListResponseImpl value,
    $Res Function(_$ReviewListResponseImpl) then,
  ) = __$$ReviewListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ReviewResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ReviewListResponseImplCopyWithImpl<$Res>
    extends _$ReviewListResponseCopyWithImpl<$Res, _$ReviewListResponseImpl>
    implements _$$ReviewListResponseImplCopyWith<$Res> {
  __$$ReviewListResponseImplCopyWithImpl(
    _$ReviewListResponseImpl _value,
    $Res Function(_$ReviewListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ReviewListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ReviewResponse>,
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
class _$ReviewListResponseImpl implements _ReviewListResponse {
  const _$ReviewListResponseImpl({
    @JsonKey(name: 'items') required final List<ReviewResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ReviewListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewListResponseImplFromJson(json);

  final List<ReviewResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<ReviewResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ReviewListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewListResponseImpl &&
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

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      __$$ReviewListResponseImplCopyWithImpl<_$ReviewListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewListResponseImplToJson(this);
  }
}

abstract class _ReviewListResponse implements ReviewListResponse {
  const factory _ReviewListResponse({
    @JsonKey(name: 'items') required final List<ReviewResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ReviewListResponseImpl;

  factory _ReviewListResponse.fromJson(Map<String, dynamic> json) =
      _$ReviewListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ReviewResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ReviewListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewListResponseImplCopyWith<_$ReviewListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

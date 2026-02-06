// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attribute_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttributeListResponse _$AttributeListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AttributeListResponse.fromJson(json);
}

/// @nodoc
mixin _$AttributeListResponse {
  @JsonKey(name: 'items')
  List<AttributeResponse> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AttributeListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttributeListResponseCopyWith<AttributeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeListResponseCopyWith<$Res> {
  factory $AttributeListResponseCopyWith(
    AttributeListResponse value,
    $Res Function(AttributeListResponse) then,
  ) = _$AttributeListResponseCopyWithImpl<$Res, AttributeListResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<AttributeResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$AttributeListResponseCopyWithImpl<
  $Res,
  $Val extends AttributeListResponse
>
    implements $AttributeListResponseCopyWith<$Res> {
  _$AttributeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttributeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<AttributeResponse>,
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
abstract class _$$AttributeListResponseImplCopyWith<$Res>
    implements $AttributeListResponseCopyWith<$Res> {
  factory _$$AttributeListResponseImplCopyWith(
    _$AttributeListResponseImpl value,
    $Res Function(_$AttributeListResponseImpl) then,
  ) = __$$AttributeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<AttributeResponse> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$AttributeListResponseImplCopyWithImpl<$Res>
    extends
        _$AttributeListResponseCopyWithImpl<$Res, _$AttributeListResponseImpl>
    implements _$$AttributeListResponseImplCopyWith<$Res> {
  __$$AttributeListResponseImplCopyWithImpl(
    _$AttributeListResponseImpl _value,
    $Res Function(_$AttributeListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttributeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$AttributeListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<AttributeResponse>,
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
class _$AttributeListResponseImpl implements _AttributeListResponse {
  const _$AttributeListResponseImpl({
    @JsonKey(name: 'items') required final List<AttributeResponse> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$AttributeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeListResponseImplFromJson(json);

  final List<AttributeResponse> _items;
  @override
  @JsonKey(name: 'items')
  List<AttributeResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AttributeListResponse(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeListResponseImpl &&
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

  /// Create a copy of AttributeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeListResponseImplCopyWith<_$AttributeListResponseImpl>
  get copyWith =>
      __$$AttributeListResponseImplCopyWithImpl<_$AttributeListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeListResponseImplToJson(this);
  }
}

abstract class _AttributeListResponse implements AttributeListResponse {
  const factory _AttributeListResponse({
    @JsonKey(name: 'items') required final List<AttributeResponse> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$AttributeListResponseImpl;

  factory _AttributeListResponse.fromJson(Map<String, dynamic> json) =
      _$AttributeListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<AttributeResponse> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AttributeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributeListResponseImplCopyWith<_$AttributeListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

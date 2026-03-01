// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryListResponseDto _$CategoryListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponseDto {
  @JsonKey(name: 'items')
  List<CategoryTreeNodeDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListResponseDtoCopyWith<CategoryListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseDtoCopyWith<$Res> {
  factory $CategoryListResponseDtoCopyWith(
    CategoryListResponseDto value,
    $Res Function(CategoryListResponseDto) then,
  ) = _$CategoryListResponseDtoCopyWithImpl<$Res, CategoryListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<CategoryTreeNodeDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryListResponseDtoCopyWithImpl<
  $Res,
  $Val extends CategoryListResponseDto
>
    implements $CategoryListResponseDtoCopyWith<$Res> {
  _$CategoryListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<CategoryTreeNodeDto>,
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
abstract class _$$CategoryListResponseDtoImplCopyWith<$Res>
    implements $CategoryListResponseDtoCopyWith<$Res> {
  factory _$$CategoryListResponseDtoImplCopyWith(
    _$CategoryListResponseDtoImpl value,
    $Res Function(_$CategoryListResponseDtoImpl) then,
  ) = __$$CategoryListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<CategoryTreeNodeDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$CategoryListResponseDtoCopyWithImpl<
          $Res,
          _$CategoryListResponseDtoImpl
        >
    implements _$$CategoryListResponseDtoImplCopyWith<$Res> {
  __$$CategoryListResponseDtoImplCopyWithImpl(
    _$CategoryListResponseDtoImpl _value,
    $Res Function(_$CategoryListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$CategoryListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<CategoryTreeNodeDto>,
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
class _$CategoryListResponseDtoImpl implements _CategoryListResponseDto {
  const _$CategoryListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<CategoryTreeNodeDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$CategoryListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseDtoImplFromJson(json);

  final List<CategoryTreeNodeDto> _items;
  @override
  @JsonKey(name: 'items')
  List<CategoryTreeNodeDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseDtoImpl &&
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

  /// Create a copy of CategoryListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseDtoImplCopyWith<_$CategoryListResponseDtoImpl>
  get copyWith =>
      __$$CategoryListResponseDtoImplCopyWithImpl<
        _$CategoryListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseDtoImplToJson(this);
  }
}

abstract class _CategoryListResponseDto implements CategoryListResponseDto {
  const factory _CategoryListResponseDto({
    @JsonKey(name: 'items') required final List<CategoryTreeNodeDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryListResponseDtoImpl;

  factory _CategoryListResponseDto.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<CategoryTreeNodeDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListResponseDtoImplCopyWith<_$CategoryListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

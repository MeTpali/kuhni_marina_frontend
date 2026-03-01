// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_product_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectProductListResponseDto _$ProjectProductListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectProductListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectProductListResponseDto {
  @JsonKey(name: 'items')
  List<ProjectProductResponseDto> get items =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectProductListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectProductListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectProductListResponseDtoCopyWith<ProjectProductListResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectProductListResponseDtoCopyWith<$Res> {
  factory $ProjectProductListResponseDtoCopyWith(
    ProjectProductListResponseDto value,
    $Res Function(ProjectProductListResponseDto) then,
  ) =
      _$ProjectProductListResponseDtoCopyWithImpl<
        $Res,
        ProjectProductListResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectProductResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectProductListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectProductListResponseDto
>
    implements $ProjectProductListResponseDtoCopyWith<$Res> {
  _$ProjectProductListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectProductListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectProductResponseDto>,
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
abstract class _$$ProjectProductListResponseDtoImplCopyWith<$Res>
    implements $ProjectProductListResponseDtoCopyWith<$Res> {
  factory _$$ProjectProductListResponseDtoImplCopyWith(
    _$ProjectProductListResponseDtoImpl value,
    $Res Function(_$ProjectProductListResponseDtoImpl) then,
  ) = __$$ProjectProductListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectProductResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectProductListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectProductListResponseDtoCopyWithImpl<
          $Res,
          _$ProjectProductListResponseDtoImpl
        >
    implements _$$ProjectProductListResponseDtoImplCopyWith<$Res> {
  __$$ProjectProductListResponseDtoImplCopyWithImpl(
    _$ProjectProductListResponseDtoImpl _value,
    $Res Function(_$ProjectProductListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectProductListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProjectProductListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectProductResponseDto>,
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
class _$ProjectProductListResponseDtoImpl
    implements _ProjectProductListResponseDto {
  const _$ProjectProductListResponseDtoImpl({
    @JsonKey(name: 'items')
    required final List<ProjectProductResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectProductListResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectProductListResponseDtoImplFromJson(json);

  final List<ProjectProductResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectProductResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectProductListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectProductListResponseDtoImpl &&
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

  /// Create a copy of ProjectProductListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectProductListResponseDtoImplCopyWith<
    _$ProjectProductListResponseDtoImpl
  >
  get copyWith =>
      __$$ProjectProductListResponseDtoImplCopyWithImpl<
        _$ProjectProductListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectProductListResponseDtoImplToJson(this);
  }
}

abstract class _ProjectProductListResponseDto
    implements ProjectProductListResponseDto {
  const factory _ProjectProductListResponseDto({
    @JsonKey(name: 'items')
    required final List<ProjectProductResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectProductListResponseDtoImpl;

  factory _ProjectProductListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectProductListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectProductResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectProductListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectProductListResponseDtoImplCopyWith<
    _$ProjectProductListResponseDtoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

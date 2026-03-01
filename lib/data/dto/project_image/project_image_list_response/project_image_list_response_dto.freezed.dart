// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_image_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectImageListResponseDto _$ProjectImageListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectImageListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectImageListResponseDto {
  @JsonKey(name: 'items')
  List<ProjectImageResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectImageListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectImageListResponseDtoCopyWith<ProjectImageListResponseDto>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectImageListResponseDtoCopyWith<$Res> {
  factory $ProjectImageListResponseDtoCopyWith(
    ProjectImageListResponseDto value,
    $Res Function(ProjectImageListResponseDto) then,
  ) =
      _$ProjectImageListResponseDtoCopyWithImpl<
        $Res,
        ProjectImageListResponseDto
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectImageListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectImageListResponseDto
>
    implements $ProjectImageListResponseDtoCopyWith<$Res> {
  _$ProjectImageListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectImageResponseDto>,
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
abstract class _$$ProjectImageListResponseDtoImplCopyWith<$Res>
    implements $ProjectImageListResponseDtoCopyWith<$Res> {
  factory _$$ProjectImageListResponseDtoImplCopyWith(
    _$ProjectImageListResponseDtoImpl value,
    $Res Function(_$ProjectImageListResponseDtoImpl) then,
  ) = __$$ProjectImageListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectImageResponseDto> items,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectImageListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectImageListResponseDtoCopyWithImpl<
          $Res,
          _$ProjectImageListResponseDtoImpl
        >
    implements _$$ProjectImageListResponseDtoImplCopyWith<$Res> {
  __$$ProjectImageListResponseDtoImplCopyWithImpl(
    _$ProjectImageListResponseDtoImpl _value,
    $Res Function(_$ProjectImageListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? message = freezed}) {
    return _then(
      _$ProjectImageListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectImageResponseDto>,
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
class _$ProjectImageListResponseDtoImpl
    implements _ProjectImageListResponseDto {
  const _$ProjectImageListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<ProjectImageResponseDto> items,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectImageListResponseDtoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ProjectImageListResponseDtoImplFromJson(json);

  final List<ProjectImageResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectImageResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectImageListResponseDto(items: $items, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImageListResponseDtoImpl &&
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

  /// Create a copy of ProjectImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImageListResponseDtoImplCopyWith<_$ProjectImageListResponseDtoImpl>
  get copyWith =>
      __$$ProjectImageListResponseDtoImplCopyWithImpl<
        _$ProjectImageListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImageListResponseDtoImplToJson(this);
  }
}

abstract class _ProjectImageListResponseDto
    implements ProjectImageListResponseDto {
  const factory _ProjectImageListResponseDto({
    @JsonKey(name: 'items') required final List<ProjectImageResponseDto> items,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectImageListResponseDtoImpl;

  factory _ProjectImageListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectImageListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectImageResponseDto> get items;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectImageListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectImageListResponseDtoImplCopyWith<_$ProjectImageListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

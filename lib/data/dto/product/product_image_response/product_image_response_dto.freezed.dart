// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductImageResponseDto _$ProductImageResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProductImageResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProductImageResponseDto {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_main')
  bool get isMain => throw _privateConstructorUsedError;

  /// Serializes this ProductImageResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImageResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageResponseDtoCopyWith<ProductImageResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageResponseDtoCopyWith<$Res> {
  factory $ProductImageResponseDtoCopyWith(
    ProductImageResponseDto value,
    $Res Function(ProductImageResponseDto) then,
  ) = _$ProductImageResponseDtoCopyWithImpl<$Res, ProductImageResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool isMain,
  });
}

/// @nodoc
class _$ProductImageResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProductImageResponseDto
>
    implements $ProductImageResponseDtoCopyWith<$Res> {
  _$ProductImageResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImageResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? isMain = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            isMain: null == isMain
                ? _value.isMain
                : isMain // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImageResponseDtoImplCopyWith<$Res>
    implements $ProductImageResponseDtoCopyWith<$Res> {
  factory _$$ProductImageResponseDtoImplCopyWith(
    _$ProductImageResponseDtoImpl value,
    $Res Function(_$ProductImageResponseDtoImpl) then,
  ) = __$$ProductImageResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'is_main') bool isMain,
  });
}

/// @nodoc
class __$$ProductImageResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProductImageResponseDtoCopyWithImpl<
          $Res,
          _$ProductImageResponseDtoImpl
        >
    implements _$$ProductImageResponseDtoImplCopyWith<$Res> {
  __$$ProductImageResponseDtoImplCopyWithImpl(
    _$ProductImageResponseDtoImpl _value,
    $Res Function(_$ProductImageResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductImageResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? isMain = null,
  }) {
    return _then(
      _$ProductImageResponseDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        isMain: null == isMain
            ? _value.isMain
            : isMain // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageResponseDtoImpl implements _ProductImageResponseDto {
  const _$ProductImageResponseDtoImpl({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'is_main') required this.isMain,
  });

  factory _$ProductImageResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'is_main')
  final bool isMain;

  @override
  String toString() {
    return 'ProductImageResponseDto(id: $id, imageUrl: $imageUrl, isMain: $isMain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isMain, isMain) || other.isMain == isMain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, isMain);

  /// Create a copy of ProductImageResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageResponseDtoImplCopyWith<_$ProductImageResponseDtoImpl>
  get copyWith =>
      __$$ProductImageResponseDtoImplCopyWithImpl<
        _$ProductImageResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageResponseDtoImplToJson(this);
  }
}

abstract class _ProductImageResponseDto implements ProductImageResponseDto {
  const factory _ProductImageResponseDto({
    @JsonKey(name: 'id') required final int id,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'is_main') required final bool isMain,
  }) = _$ProductImageResponseDtoImpl;

  factory _ProductImageResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProductImageResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'is_main')
  bool get isMain;

  /// Create a copy of ProductImageResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageResponseDtoImplCopyWith<_$ProductImageResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

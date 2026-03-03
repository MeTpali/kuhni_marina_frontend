// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DiscountListResponseDto _$DiscountListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _DiscountListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$DiscountListResponseDto {
  @JsonKey(name: 'items')
  List<DiscountResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this DiscountListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountListResponseDtoCopyWith<DiscountListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountListResponseDtoCopyWith<$Res> {
  factory $DiscountListResponseDtoCopyWith(
    DiscountListResponseDto value,
    $Res Function(DiscountListResponseDto) then,
  ) = _$DiscountListResponseDtoCopyWithImpl<$Res, DiscountListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<DiscountResponseDto> items,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$DiscountListResponseDtoCopyWithImpl<
  $Res,
  $Val extends DiscountListResponseDto
>
    implements $DiscountListResponseDtoCopyWith<$Res> {
  _$DiscountListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<DiscountResponseDto>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            pageSize: null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$DiscountListResponseDtoImplCopyWith<$Res>
    implements $DiscountListResponseDtoCopyWith<$Res> {
  factory _$$DiscountListResponseDtoImplCopyWith(
    _$DiscountListResponseDtoImpl value,
    $Res Function(_$DiscountListResponseDtoImpl) then,
  ) = __$$DiscountListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<DiscountResponseDto> items,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'page_size') int pageSize,
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$DiscountListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$DiscountListResponseDtoCopyWithImpl<
          $Res,
          _$DiscountListResponseDtoImpl
        >
    implements _$$DiscountListResponseDtoImplCopyWith<$Res> {
  __$$DiscountListResponseDtoImplCopyWithImpl(
    _$DiscountListResponseDtoImpl _value,
    $Res Function(_$DiscountListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DiscountListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? message = freezed,
  }) {
    return _then(
      _$DiscountListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<DiscountResponseDto>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$DiscountListResponseDtoImpl implements _DiscountListResponseDto {
  const _$DiscountListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<DiscountResponseDto> items,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'page') required this.page,
    @JsonKey(name: 'page_size') required this.pageSize,
    @JsonKey(name: 'total_pages') required this.totalPages,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$DiscountListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountListResponseDtoImplFromJson(json);

  final List<DiscountResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<DiscountResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'DiscountListResponseDto(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountListResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
    totalPages,
    message,
  );

  /// Create a copy of DiscountListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountListResponseDtoImplCopyWith<_$DiscountListResponseDtoImpl>
  get copyWith =>
      __$$DiscountListResponseDtoImplCopyWithImpl<
        _$DiscountListResponseDtoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountListResponseDtoImplToJson(this);
  }
}

abstract class _DiscountListResponseDto implements DiscountListResponseDto {
  const factory _DiscountListResponseDto({
    @JsonKey(name: 'items') required final List<DiscountResponseDto> items,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'page') required final int page,
    @JsonKey(name: 'page_size') required final int pageSize,
    @JsonKey(name: 'total_pages') required final int totalPages,
    @JsonKey(name: 'message') final String? message,
  }) = _$DiscountListResponseDtoImpl;

  factory _DiscountListResponseDto.fromJson(Map<String, dynamic> json) =
      _$DiscountListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<DiscountResponseDto> get items;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of DiscountListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountListResponseDtoImplCopyWith<_$DiscountListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

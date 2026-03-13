// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_list_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectListResponseDto _$ProjectListResponseDtoFromJson(
  Map<String, dynamic> json,
) {
  return _ProjectListResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectListResponseDto {
  @JsonKey(name: 'items')
  List<ProjectResponseDto> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this ProjectListResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectListResponseDtoCopyWith<ProjectListResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListResponseDtoCopyWith<$Res> {
  factory $ProjectListResponseDtoCopyWith(
    ProjectListResponseDto value,
    $Res Function(ProjectListResponseDto) then,
  ) = _$ProjectListResponseDtoCopyWithImpl<$Res, ProjectListResponseDto>;
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectResponseDto> items,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$ProjectListResponseDtoCopyWithImpl<
  $Res,
  $Val extends ProjectListResponseDto
>
    implements $ProjectListResponseDtoCopyWith<$Res> {
  _$ProjectListResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ProjectResponseDto>,
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            pageSize: freezed == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPages: freezed == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int?,
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
abstract class _$$ProjectListResponseDtoImplCopyWith<$Res>
    implements $ProjectListResponseDtoCopyWith<$Res> {
  factory _$$ProjectListResponseDtoImplCopyWith(
    _$ProjectListResponseDtoImpl value,
    $Res Function(_$ProjectListResponseDtoImpl) then,
  ) = __$$ProjectListResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'items') List<ProjectResponseDto> items,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'page_size') int? pageSize,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$ProjectListResponseDtoImplCopyWithImpl<$Res>
    extends
        _$ProjectListResponseDtoCopyWithImpl<$Res, _$ProjectListResponseDtoImpl>
    implements _$$ProjectListResponseDtoImplCopyWith<$Res> {
  __$$ProjectListResponseDtoImplCopyWithImpl(
    _$ProjectListResponseDtoImpl _value,
    $Res Function(_$ProjectListResponseDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
    Object? message = freezed,
  }) {
    return _then(
      _$ProjectListResponseDtoImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ProjectResponseDto>,
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        page: freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        pageSize: freezed == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPages: freezed == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int?,
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
class _$ProjectListResponseDtoImpl implements _ProjectListResponseDto {
  const _$ProjectListResponseDtoImpl({
    @JsonKey(name: 'items') required final List<ProjectResponseDto> items,
    @JsonKey(name: 'total') this.total,
    @JsonKey(name: 'page') this.page,
    @JsonKey(name: 'page_size') this.pageSize,
    @JsonKey(name: 'total_pages') this.totalPages,
    @JsonKey(name: 'message') this.message,
  }) : _items = items;

  factory _$ProjectListResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectListResponseDtoImplFromJson(json);

  final List<ProjectResponseDto> _items;
  @override
  @JsonKey(name: 'items')
  List<ProjectResponseDto> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'page')
  final int? page;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ProjectListResponseDto(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectListResponseDtoImpl &&
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

  /// Create a copy of ProjectListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectListResponseDtoImplCopyWith<_$ProjectListResponseDtoImpl>
  get copyWith =>
      __$$ProjectListResponseDtoImplCopyWithImpl<_$ProjectListResponseDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectListResponseDtoImplToJson(this);
  }
}

abstract class _ProjectListResponseDto implements ProjectListResponseDto {
  const factory _ProjectListResponseDto({
    @JsonKey(name: 'items') required final List<ProjectResponseDto> items,
    @JsonKey(name: 'total') final int? total,
    @JsonKey(name: 'page') final int? page,
    @JsonKey(name: 'page_size') final int? pageSize,
    @JsonKey(name: 'total_pages') final int? totalPages,
    @JsonKey(name: 'message') final String? message,
  }) = _$ProjectListResponseDtoImpl;

  factory _ProjectListResponseDto.fromJson(Map<String, dynamic> json) =
      _$ProjectListResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ProjectResponseDto> get items;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of ProjectListResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectListResponseDtoImplCopyWith<_$ProjectListResponseDtoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

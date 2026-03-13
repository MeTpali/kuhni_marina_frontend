// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProjectCatalog {
  List<Project> get items => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;

  /// Create a copy of ProjectCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectCatalogCopyWith<ProjectCatalog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCatalogCopyWith<$Res> {
  factory $ProjectCatalogCopyWith(
    ProjectCatalog value,
    $Res Function(ProjectCatalog) then,
  ) = _$ProjectCatalogCopyWithImpl<$Res, ProjectCatalog>;
  @useResult
  $Res call({
    List<Project> items,
    int? total,
    int? page,
    int? pageSize,
    int? totalPages,
  });
}

/// @nodoc
class _$ProjectCatalogCopyWithImpl<$Res, $Val extends ProjectCatalog>
    implements $ProjectCatalogCopyWith<$Res> {
  _$ProjectCatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Project>,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectCatalogImplCopyWith<$Res>
    implements $ProjectCatalogCopyWith<$Res> {
  factory _$$ProjectCatalogImplCopyWith(
    _$ProjectCatalogImpl value,
    $Res Function(_$ProjectCatalogImpl) then,
  ) = __$$ProjectCatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Project> items,
    int? total,
    int? page,
    int? pageSize,
    int? totalPages,
  });
}

/// @nodoc
class __$$ProjectCatalogImplCopyWithImpl<$Res>
    extends _$ProjectCatalogCopyWithImpl<$Res, _$ProjectCatalogImpl>
    implements _$$ProjectCatalogImplCopyWith<$Res> {
  __$$ProjectCatalogImplCopyWithImpl(
    _$ProjectCatalogImpl _value,
    $Res Function(_$ProjectCatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = freezed,
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _$ProjectCatalogImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Project>,
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
      ),
    );
  }
}

/// @nodoc

class _$ProjectCatalogImpl implements _ProjectCatalog {
  const _$ProjectCatalogImpl({
    required final List<Project> items,
    this.total,
    this.page,
    this.pageSize,
    this.totalPages,
  }) : _items = items;

  final List<Project> _items;
  @override
  List<Project> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? pageSize;
  @override
  final int? totalPages;

  @override
  String toString() {
    return 'ProjectCatalog(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectCatalogImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    total,
    page,
    pageSize,
    totalPages,
  );

  /// Create a copy of ProjectCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectCatalogImplCopyWith<_$ProjectCatalogImpl> get copyWith =>
      __$$ProjectCatalogImplCopyWithImpl<_$ProjectCatalogImpl>(
        this,
        _$identity,
      );
}

abstract class _ProjectCatalog implements ProjectCatalog {
  const factory _ProjectCatalog({
    required final List<Project> items,
    final int? total,
    final int? page,
    final int? pageSize,
    final int? totalPages,
  }) = _$ProjectCatalogImpl;

  @override
  List<Project> get items;
  @override
  int? get total;
  @override
  int? get page;
  @override
  int? get pageSize;
  @override
  int? get totalPages;

  /// Create a copy of ProjectCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectCatalogImplCopyWith<_$ProjectCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

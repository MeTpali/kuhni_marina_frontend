// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_catalog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CampaignCatalog {
  List<Campaign> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  /// Create a copy of CampaignCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignCatalogCopyWith<CampaignCatalog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCatalogCopyWith<$Res> {
  factory $CampaignCatalogCopyWith(
    CampaignCatalog value,
    $Res Function(CampaignCatalog) then,
  ) = _$CampaignCatalogCopyWithImpl<$Res, CampaignCatalog>;
  @useResult
  $Res call({
    List<Campaign> items,
    int total,
    int page,
    int pageSize,
    int totalPages,
  });
}

/// @nodoc
class _$CampaignCatalogCopyWithImpl<$Res, $Val extends CampaignCatalog>
    implements $CampaignCatalogCopyWith<$Res> {
  _$CampaignCatalogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Campaign>,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CampaignCatalogImplCopyWith<$Res>
    implements $CampaignCatalogCopyWith<$Res> {
  factory _$$CampaignCatalogImplCopyWith(
    _$CampaignCatalogImpl value,
    $Res Function(_$CampaignCatalogImpl) then,
  ) = __$$CampaignCatalogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Campaign> items,
    int total,
    int page,
    int pageSize,
    int totalPages,
  });
}

/// @nodoc
class __$$CampaignCatalogImplCopyWithImpl<$Res>
    extends _$CampaignCatalogCopyWithImpl<$Res, _$CampaignCatalogImpl>
    implements _$$CampaignCatalogImplCopyWith<$Res> {
  __$$CampaignCatalogImplCopyWithImpl(
    _$CampaignCatalogImpl _value,
    $Res Function(_$CampaignCatalogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CampaignCatalog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$CampaignCatalogImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Campaign>,
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
      ),
    );
  }
}

/// @nodoc

class _$CampaignCatalogImpl implements _CampaignCatalog {
  const _$CampaignCatalogImpl({
    required final List<Campaign> items,
    required this.total,
    required this.page,
    required this.pageSize,
    required this.totalPages,
  }) : _items = items;

  final List<Campaign> _items;
  @override
  List<Campaign> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'CampaignCatalog(items: $items, total: $total, page: $page, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignCatalogImpl &&
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

  /// Create a copy of CampaignCatalog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignCatalogImplCopyWith<_$CampaignCatalogImpl> get copyWith =>
      __$$CampaignCatalogImplCopyWithImpl<_$CampaignCatalogImpl>(
        this,
        _$identity,
      );
}

abstract class _CampaignCatalog implements CampaignCatalog {
  const factory _CampaignCatalog({
    required final List<Campaign> items,
    required final int total,
    required final int page,
    required final int pageSize,
    required final int totalPages,
  }) = _$CampaignCatalogImpl;

  @override
  List<Campaign> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get totalPages;

  /// Create a copy of CampaignCatalog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignCatalogImplCopyWith<_$CampaignCatalogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

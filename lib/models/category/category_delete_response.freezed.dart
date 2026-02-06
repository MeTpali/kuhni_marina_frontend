// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CategoryDeleteResponse _$CategoryDeleteResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CategoryDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryDeleteResponse {
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this CategoryDeleteResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDeleteResponseCopyWith<CategoryDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDeleteResponseCopyWith<$Res> {
  factory $CategoryDeleteResponseCopyWith(
    CategoryDeleteResponse value,
    $Res Function(CategoryDeleteResponse) then,
  ) = _$CategoryDeleteResponseCopyWithImpl<$Res, CategoryDeleteResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class _$CategoryDeleteResponseCopyWithImpl<
  $Res,
  $Val extends CategoryDeleteResponse
>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  _$CategoryDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null, Object? message = freezed}) {
    return _then(
      _value.copyWith(
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CategoryDeleteResponseImplCopyWith<$Res>
    implements $CategoryDeleteResponseCopyWith<$Res> {
  factory _$$CategoryDeleteResponseImplCopyWith(
    _$CategoryDeleteResponseImpl value,
    $Res Function(_$CategoryDeleteResponseImpl) then,
  ) = __$$CategoryDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'category_id') int categoryId,
    @JsonKey(name: 'message') String? message,
  });
}

/// @nodoc
class __$$CategoryDeleteResponseImplCopyWithImpl<$Res>
    extends
        _$CategoryDeleteResponseCopyWithImpl<$Res, _$CategoryDeleteResponseImpl>
    implements _$$CategoryDeleteResponseImplCopyWith<$Res> {
  __$$CategoryDeleteResponseImplCopyWithImpl(
    _$CategoryDeleteResponseImpl _value,
    $Res Function(_$CategoryDeleteResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CategoryDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? categoryId = null, Object? message = freezed}) {
    return _then(
      _$CategoryDeleteResponseImpl(
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
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
class _$CategoryDeleteResponseImpl implements _CategoryDeleteResponse {
  const _$CategoryDeleteResponseImpl({
    @JsonKey(name: 'category_id') required this.categoryId,
    @JsonKey(name: 'message') this.message,
  });

  factory _$CategoryDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'CategoryDeleteResponse(categoryId: $categoryId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDeleteResponseImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, message);

  /// Create a copy of CategoryDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDeleteResponseImplCopyWith<_$CategoryDeleteResponseImpl>
  get copyWith =>
      __$$CategoryDeleteResponseImplCopyWithImpl<_$CategoryDeleteResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDeleteResponseImplToJson(this);
  }
}

abstract class _CategoryDeleteResponse implements CategoryDeleteResponse {
  const factory _CategoryDeleteResponse({
    @JsonKey(name: 'category_id') required final int categoryId,
    @JsonKey(name: 'message') final String? message,
  }) = _$CategoryDeleteResponseImpl;

  factory _CategoryDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of CategoryDeleteResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDeleteResponseImplCopyWith<_$CategoryDeleteResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_validation_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HTTPValidationErrorDtoImpl _$$HTTPValidationErrorDtoImplFromJson(
  Map<String, dynamic> json,
) => _$HTTPValidationErrorDtoImpl(
  detail: (json['detail'] as List<dynamic>)
      .map((e) => ValidationErrorDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$HTTPValidationErrorDtoImplToJson(
  _$HTTPValidationErrorDtoImpl instance,
) => <String, dynamic>{'detail': instance.detail};

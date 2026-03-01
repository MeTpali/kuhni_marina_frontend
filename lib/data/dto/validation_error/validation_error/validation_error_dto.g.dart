// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationErrorDtoImpl _$$ValidationErrorDtoImplFromJson(
  Map<String, dynamic> json,
) => _$ValidationErrorDtoImpl(
  loc: (json['loc'] as List<dynamic>).map((e) => e as Object).toList(),
  msg: json['msg'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$$ValidationErrorDtoImplToJson(
  _$ValidationErrorDtoImpl instance,
) => <String, dynamic>{
  'loc': instance.loc,
  'msg': instance.msg,
  'type': instance.type,
};

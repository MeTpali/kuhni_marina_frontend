// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_create_bulk_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageCreateBulkRequestDtoImpl
_$$ProjectImageCreateBulkRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImageCreateBulkRequestDtoImpl(
      images: (json['images'] as List<dynamic>)
          .map(
            (e) => ProjectImageCreateRequestDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$$ProjectImageCreateBulkRequestDtoImplToJson(
  _$ProjectImageCreateBulkRequestDtoImpl instance,
) => <String, dynamic>{'images': instance.images};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_image_create_bulk_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImageCreateBulkRequestImpl
_$$ProjectImageCreateBulkRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImageCreateBulkRequestImpl(
      images: (json['images'] as List<dynamic>)
          .map(
            (e) =>
                ProjectImageCreateRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$ProjectImageCreateBulkRequestImplToJson(
  _$ProjectImageCreateBulkRequestImpl instance,
) => <String, dynamic>{'images': instance.images};

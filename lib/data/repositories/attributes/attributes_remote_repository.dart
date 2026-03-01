import 'package:frontend/core/entities/result/result.dart';
import 'package:frontend/data/mappers/attributes/attribute_mapper.dart';
import 'package:frontend/data/mappers/attributes/attribute_request_mappers.dart';
import 'package:frontend/data/services/attributes/attributes_remote_service.dart';
import 'package:frontend/data/utils/response_error_mapper.dart';
import 'package:frontend/domain/models/attribute/attribute.dart';
import 'package:frontend/domain/models/attribute/attribute_create_request.dart';
import 'package:frontend/domain/models/attribute/attribute_update_request.dart';
import 'package:frontend/domain/repositories/i_attributes_repository.dart';

class AttributesRemoteRepository implements IAttributesRepository {
  AttributesRemoteRepository({required AttributesRemoteService service})
      : _service = service;

  final AttributesRemoteService _service;
  final AttributeMapper _mapper = AttributeMapper();

  @override
  Future<Result<List<Attribute>>> getAttributes(String token) async {
    final response = await _service.getAttributes(token: token);
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> createAttribute(
    String token,
    AttributeCreateRequest request,
  ) async {
    final dto = AttributeRequestMappers.toCreateDto(request);
    final response = await _service.createAttribute(token: token, request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> getAttributeById(String token, int attributeId) async {
    final response =
        await _service.getAttributeById(token: token, attributeId: attributeId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> updateAttribute(
    String token,
    int attributeId,
    AttributeUpdateRequest request,
  ) async {
    final dto = AttributeRequestMappers.toUpdateDto(request);
    final response = await _service.updateAttribute(
      token: token,
      attributeId: attributeId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteAttribute(String token, int attributeId) async {
    final response =
        await _service.deleteAttribute(token: token, attributeId: attributeId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}

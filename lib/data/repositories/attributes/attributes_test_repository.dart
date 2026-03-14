import '../../../core/entities/result/result.dart';
import '../../../domain/models/attribute/attribute.dart';
import '../../../domain/models/attribute/attribute_create_request.dart';
import '../../../domain/models/attribute/attribute_update_request.dart';
import '../../../domain/repositories/i_attributes_repository.dart';
import '../../mappers/attributes/attribute_mapper.dart';
import '../../mappers/attributes/attribute_request_mappers.dart';
import '../../services/attributes/attributes_test_service.dart';
import '../../utils/response_error_mapper.dart';

/// Тестовый репозиторий атрибутов на основе [AttributesTestService].
class AttributesTestRepository implements IAttributesRepository {
  AttributesTestRepository({required AttributesTestService service})
      : _service = service;

  final AttributesTestService _service;
  final AttributeMapper _mapper = AttributeMapper();

  @override
  Future<Result<List<Attribute>>> getAttributes() async {
    final response = await _service.getAttributes();
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> createAttribute(AttributeCreateRequest request) async {
    final dto = AttributeRequestMappers.toCreateDto(request);
    final response = await _service.createAttribute(request: dto);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> getAttributeById(int attributeId) async {
    final response = await _service.getAttributeById(attributeId: attributeId);
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Attribute>> updateAttribute(
    int attributeId,
    AttributeUpdateRequest request,
  ) async {
    final dto = AttributeRequestMappers.toUpdateDto(request);
    final response = await _service.updateAttribute(
      attributeId: attributeId,
      request: dto,
    );
    return response.when(
      success: (data) => Result.success(_mapper.map(data)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteAttribute(int attributeId) async {
    final response = await _service.deleteAttribute(attributeId: attributeId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}

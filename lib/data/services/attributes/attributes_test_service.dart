import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/attribute/attribute_create_request/attribute_create_request_dto.dart';
import '../../dto/attribute/attribute_delete_response/attribute_delete_response_dto.dart';
import '../../dto/attribute/attribute_list_response/attribute_list_response_dto.dart';
import '../../dto/attribute/attribute_response/attribute_response_dto.dart';
import '../../dto/attribute/attribute_update_request/attribute_update_request_dto.dart';

/// Тестовый сервис атрибутов с моковыми данными.
class AttributesTestService {
  AttributesTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    AttributeResponseDto(id: 1, name: 'Ширина', unit: 'см', message: null),
    AttributeResponseDto(id: 2, name: 'Высота', unit: 'см', message: null),
    AttributeResponseDto(id: 3, name: 'Глубина', unit: 'см', message: null),
    AttributeResponseDto(id: 4, name: 'Материал', unit: null, message: null),
  ];

  static const _mockListResponse =
      AttributeListResponseDto(items: _mockItems, message: null);

  Future<ResponseResult<AttributeListResponseDto>> getAttributes({
    required String token,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<AttributeResponseDto>> createAttribute({
    required String token,
    required AttributeCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(AttributeResponseDto(
      id: 99,
      name: request.name,
      unit: request.unit,
      message: null,
    ));
  }

  Future<ResponseResult<AttributeResponseDto>> getAttributeById({
    required String token,
    required int attributeId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final list = _mockItems.where((e) => e.id == attributeId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
          AttributeResponseDto(
            id: attributeId,
            name: 'Атрибут $attributeId',
            unit: 'шт',
            message: null,
          ),
    );
  }

  Future<ResponseResult<AttributeResponseDto>> updateAttribute({
    required String token,
    required int attributeId,
    required AttributeUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(AttributeResponseDto(
      id: attributeId,
      name: request.name,
      unit: request.unit,
      message: null,
    ));
  }

  Future<ResponseResult<AttributeDeleteResponseDto>> deleteAttribute({
    required String token,
    required int attributeId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      AttributeDeleteResponseDto(attributeId: attributeId, message: null),
    );
  }
}

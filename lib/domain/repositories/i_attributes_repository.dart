import '../../core/entities/result/result.dart';
import '../models/attribute/attribute.dart';
import '../models/attribute/attribute_create_request.dart';
import '../models/attribute/attribute_update_request.dart';

/// Репозиторий атрибутов (характеристик товаров).
abstract class IAttributesRepository {
  Future<Result<List<Attribute>>> getAttributes(String token);

  Future<Result<Attribute>> createAttribute(
    String token,
    AttributeCreateRequest request,
  );

  Future<Result<Attribute>> getAttributeById(String token, int attributeId);

  Future<Result<Attribute>> updateAttribute(
    String token,
    int attributeId,
    AttributeUpdateRequest request,
  );

  Future<Result<bool>> deleteAttribute(String token, int attributeId);
}

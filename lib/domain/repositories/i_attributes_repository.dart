import '../../core/entities/result/result.dart';
import '../models/attribute/attribute.dart';
import '../models/attribute/attribute_create_request.dart';
import '../models/attribute/attribute_update_request.dart';

/// Репозиторий атрибутов (характеристик товаров).
abstract class IAttributesRepository {
  Future<Result<List<Attribute>>> getAttributes();

  Future<Result<Attribute>> createAttribute(AttributeCreateRequest request);

  Future<Result<Attribute>> getAttributeById(int attributeId);

  Future<Result<Attribute>> updateAttribute(
    int attributeId,
    AttributeUpdateRequest request,
  );

  Future<Result<bool>> deleteAttribute(int attributeId);
}

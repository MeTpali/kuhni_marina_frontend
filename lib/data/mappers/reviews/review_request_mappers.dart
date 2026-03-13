import '../../../domain/models/review/review_create_request.dart';
import '../../../domain/models/review/review_update_request.dart';
import '../../dto/review/review_create_request/review_create_request_dto.dart';
import '../../dto/review/review_update_request/review_update_request_dto.dart';

class ReviewRequestMappers {
  static ReviewCreateRequestDto toCreateDto(ReviewCreateRequest request) =>
      ReviewCreateRequestDto(
        authorName: request.authorName,
        rating: request.rating,
        text: request.text,
        productId: request.productId,
        userId: request.userId,
        isApproved: request.isApproved,
      );

  static ReviewUpdateRequestDto toUpdateDto(ReviewUpdateRequest request) =>
      ReviewUpdateRequestDto(
        authorName: request.authorName,
        rating: request.rating,
        text: request.text,
        productId: request.productId,
        userId: request.userId,
      );
}

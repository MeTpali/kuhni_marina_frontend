import '../../../domain/models/review/review.dart';
import '../../dto/review/review_response/review_response_dto.dart';
import '../i_mapper.dart';

class ReviewMapper implements IMapper<ReviewResponseDto, Review> {
  @override
  Review map(ReviewResponseDto from) => Review(
        id: from.id,
        authorName: from.authorName,
        rating: from.rating,
        text: from.text,
        isApproved: from.isApproved,
        createdAt: from.createdAt.toIso8601String(),
        productId: from.productId,
        userId: from.userId,
      );
}

import '../../../core/entities/result/result.dart';
import '../../../domain/models/review/review.dart';
import '../../../domain/models/review/review_create_request.dart';
import '../../../domain/models/review/review_update_request.dart';
import '../../../domain/repositories/i_reviews_repository.dart';
import '../../mappers/reviews/review_mapper.dart';
import '../../mappers/reviews/review_request_mappers.dart';
import '../../services/reviews/reviews_test_service.dart';
import '../../utils/response_error_mapper.dart';

class ReviewsTestRepository implements IReviewsRepository {
  ReviewsTestRepository({required ReviewsTestService service})
      : _service = service;

  final ReviewsTestService _service;
  final ReviewMapper _mapper = ReviewMapper();

  @override
  Future<Result<List<Review>>> getReviews() async {
    final response = await _service.getReviews();
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<Review>>> getReviewsByProductId(int productId) async {
    final response = await _service.getReviewsByProductId(productId: productId);
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> getReviewById(int reviewId) async {
    final response = await _service.getReviewById(reviewId: reviewId);
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> createReview(ReviewCreateRequest request) async {
    final response = await _service.createReview(
      request: ReviewRequestMappers.toCreateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> updateReview(
    int reviewId,
    ReviewUpdateRequest request,
  ) async {
    final response = await _service.updateReview(
      reviewId: reviewId,
      request: ReviewRequestMappers.toUpdateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> approveReview(int reviewId) async {
    final response = await _service.approveReview(reviewId: reviewId);
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteReview(int reviewId) async {
    final response = await _service.deleteReview(reviewId: reviewId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}

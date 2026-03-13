import '../../../core/entities/result/result.dart';
import '../../../domain/models/review/review.dart';
import '../../../domain/models/review/review_create_request.dart';
import '../../../domain/models/review/review_update_request.dart';
import '../../../domain/repositories/i_reviews_repository.dart';
import '../../mappers/reviews/review_mapper.dart';
import '../../mappers/reviews/review_request_mappers.dart';
import '../../services/reviews/reviews_remote_service.dart';
import '../../utils/response_error_mapper.dart';

class ReviewsRemoteRepository implements IReviewsRepository {
  ReviewsRemoteRepository({required ReviewsRemoteService service})
      : _service = service;

  final ReviewsRemoteService _service;
  final ReviewMapper _mapper = ReviewMapper();

  @override
  Future<Result<List<Review>>> getReviews(String token) async {
    final response = await _service.getReviews(token: token);
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<List<Review>>> getReviewsByProductId(
    String token,
    int productId,
  ) async {
    final response =
        await _service.getReviewsByProductId(token: token, productId: productId);
    return response.when(
      success: (dto) => Result.success(dto.items.map(_mapper.map).toList()),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> getReviewById(String token, int reviewId) async {
    final response = await _service.getReviewById(token: token, reviewId: reviewId);
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> createReview(
    String token,
    ReviewCreateRequest request,
  ) async {
    final response = await _service.createReview(
      token: token,
      request: ReviewRequestMappers.toCreateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> updateReview(
    String token,
    int reviewId,
    ReviewUpdateRequest request,
  ) async {
    final response = await _service.updateReview(
      token: token,
      reviewId: reviewId,
      request: ReviewRequestMappers.toUpdateDto(request),
    );
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<Review>> approveReview(String token, int reviewId) async {
    final response = await _service.approveReview(token: token, reviewId: reviewId);
    return response.when(
      success: (dto) => Result.success(_mapper.map(dto)),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }

  @override
  Future<Result<bool>> deleteReview(String token, int reviewId) async {
    final response = await _service.deleteReview(token: token, reviewId: reviewId);
    return response.when(
      success: (_) => const Result.success(true),
      error: (e) => Result.error(responseErrorToMessage(e)),
    );
  }
}

import '../../core/entities/result/result.dart';
import '../models/review/review.dart';
import '../models/review/review_create_request.dart';
import '../models/review/review_update_request.dart';

abstract class IReviewsRepository {
  Future<Result<List<Review>>> getReviews(String token);

  Future<Result<List<Review>>> getReviewsByProductId(String token, int productId);

  Future<Result<Review>> getReviewById(String token, int reviewId);

  Future<Result<Review>> createReview(String token, ReviewCreateRequest request);

  Future<Result<Review>> updateReview(
    String token,
    int reviewId,
    ReviewUpdateRequest request,
  );

  Future<Result<Review>> approveReview(String token, int reviewId);

  Future<Result<bool>> deleteReview(String token, int reviewId);
}

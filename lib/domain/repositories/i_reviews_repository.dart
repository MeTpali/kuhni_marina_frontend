import '../../core/entities/result/result.dart';
import '../models/review/review.dart';
import '../models/review/review_create_request.dart';
import '../models/review/review_update_request.dart';

abstract class IReviewsRepository {
  Future<Result<List<Review>>> getReviews();

  Future<Result<List<Review>>> getReviewsByProductId(int productId);

  Future<Result<Review>> getReviewById(int reviewId);

  Future<Result<Review>> createReview(ReviewCreateRequest request);

  Future<Result<Review>> updateReview(
    int reviewId,
    ReviewUpdateRequest request,
  );

  Future<Result<Review>> approveReview(int reviewId);

  Future<Result<bool>> deleteReview(int reviewId);
}

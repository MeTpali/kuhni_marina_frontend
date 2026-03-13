import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/review/review_create_request/review_create_request_dto.dart';
import '../../dto/review/review_delete_response/review_delete_response_dto.dart';
import '../../dto/review/review_list_response/review_list_response_dto.dart';
import '../../dto/review/review_response/review_response_dto.dart';
import '../../dto/review/review_update_request/review_update_request_dto.dart';

class ReviewsTestService {
  ReviewsTestService({this.addDelay = true});

  final bool addDelay;

  static final _mockItems = <ReviewResponseDto>[
    ReviewResponseDto(
      id: 1,
      authorName: 'Ирина',
      rating: 5,
      text: 'Отличная кухня',
      isApproved: true,
      createdAt: DateTime.parse('2024-01-15T10:00:00Z'),
      productId: 1,
      userId: null,
      message: null,
    ),
    ReviewResponseDto(
      id: 2,
      authorName: 'Андрей',
      rating: 4,
      text: 'Хорошее качество',
      isApproved: false,
      createdAt: DateTime.parse('2024-02-15T10:00:00Z'),
      productId: 1,
      userId: null,
      message: null,
    ),
  ];

  Future<ResponseResult<ReviewListResponseDto>> getReviews({
    required String token,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 280));
    return ResponseResult.success(ReviewListResponseDto(items: _mockItems));
  }

  Future<ResponseResult<ReviewListResponseDto>> getReviewsByProductId({
    required String token,
    required int productId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 280));
    final filtered = _mockItems.where((e) => e.productId == productId).toList();
    return ResponseResult.success(ReviewListResponseDto(items: filtered));
  }

  Future<ResponseResult<ReviewResponseDto>> getReviewById({
    required String token,
    required int reviewId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 220));
    final item = _mockItems.firstWhere(
      (e) => e.id == reviewId,
      orElse: () => _mockItems.first,
    );
    return ResponseResult.success(item);
  }

  Future<ResponseResult<ReviewResponseDto>> createReview({
    required String token,
    required ReviewCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 280));
    return ResponseResult.success(
      ReviewResponseDto(
        id: 999,
        authorName: request.authorName,
        rating: request.rating,
        text: request.text,
        isApproved: request.isApproved ?? false,
        createdAt: DateTime.now().toUtc(),
        productId: request.productId,
        userId: request.userId,
        message: null,
      ),
    );
  }

  Future<ResponseResult<ReviewResponseDto>> updateReview({
    required String token,
    required int reviewId,
    required ReviewUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 280));
    return ResponseResult.success(
      ReviewResponseDto(
        id: reviewId,
        authorName: request.authorName ?? 'Автор',
        rating: request.rating ?? 5,
        text: request.text ?? 'Текст',
        isApproved: true,
        createdAt: DateTime.parse('2024-01-15T10:00:00Z'),
        productId: request.productId,
        userId: request.userId,
        message: null,
      ),
    );
  }

  Future<ResponseResult<ReviewResponseDto>> approveReview({
    required String token,
    required int reviewId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 220));
    final item = _mockItems.firstWhere(
      (e) => e.id == reviewId,
      orElse: () => _mockItems.first,
    );
    return ResponseResult.success(item.copyWith(isApproved: true));
  }

  Future<ResponseResult<ReviewDeleteResponseDto>> deleteReview({
    required String token,
    required int reviewId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 220));
    return ResponseResult.success(
      ReviewDeleteResponseDto(reviewId: reviewId, message: null),
    );
  }
}

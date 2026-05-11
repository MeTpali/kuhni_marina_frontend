import '../../../../core/entities/response_result/response_result.dart';
import '../../dto/background_image/background_image_create_request/background_image_create_request_dto.dart';
import '../../dto/background_image/background_image_delete_response/background_image_delete_response_dto.dart';
import '../../dto/background_image/background_image_list_response/background_image_list_response_dto.dart';
import '../../dto/background_image/background_image_response/background_image_response_dto.dart';
import '../../dto/background_image/background_image_update_request/background_image_update_request_dto.dart';

class BackgroundImagesTestService {
  BackgroundImagesTestService({this.addDelay = true});

  final bool addDelay;

  static const _mockItems = [
    BackgroundImageResponseDto(
      id: 1,
      url:
          'https://storage.yandexcloud.net/kuhni-storage/background_images/a26ac5d05564478a9c4b6849ac3f8957.png',
      isActive: true,
      message: null,
    ),
    BackgroundImageResponseDto(
      id: 2,
      url:
          'https://storage.yandexcloud.net/kuhni-storage/background_images/0d54379b6a3a4959bede4440b8449863.png',
      isActive: true,
      message: null,
    ),
    BackgroundImageResponseDto(
      id: 3,
      url:
          'https://storage.yandexcloud.net/kuhni-storage/background_images/96ff24bab74d4e1aaf3934da45bb2fce.png',
      isActive: true,
      message: null,
    ),
  ];

  static const _mockListResponse = BackgroundImageListResponseDto(
    items: _mockItems,
    message: null,
  );

  Future<ResponseResult<BackgroundImageListResponseDto>>
  getBackgroundImages() async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return const ResponseResult.success(_mockListResponse);
  }

  Future<ResponseResult<BackgroundImageResponseDto>> createBackgroundImage({
    required BackgroundImageCreateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(
      BackgroundImageResponseDto(
        id: 99,
        url: request.url,
        isActive: request.isActive,
        message: null,
      ),
    );
  }

  Future<ResponseResult<BackgroundImageResponseDto>> getBackgroundImageById({
    required int backgroundImageId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 200));
    final list = _mockItems.where((e) => e.id == backgroundImageId).toList();
    final found = list.isNotEmpty ? list.first : null;
    return ResponseResult.success(
      found ??
          BackgroundImageResponseDto(
            id: backgroundImageId,
            url:
                'https://storage.yandexcloud.net/kuhni-storage/background_images/a26ac5d05564478a9c4b6849ac3f8957.png',
            isActive: true,
            message: null,
          ),
    );
  }

  Future<ResponseResult<BackgroundImageResponseDto>> updateBackgroundImage({
    required int backgroundImageId,
    required BackgroundImageUpdateRequestDto request,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 300));
    return ResponseResult.success(
      BackgroundImageResponseDto(
        id: backgroundImageId,
        url: request.url,
        isActive: request.isActive,
        message: null,
      ),
    );
  }

  Future<ResponseResult<BackgroundImageDeleteResponseDto>> deleteBackgroundImage({
    required int backgroundImageId,
  }) async {
    if (addDelay) await Future<void>.delayed(const Duration(milliseconds: 250));
    return ResponseResult.success(
      BackgroundImageDeleteResponseDto(
        backgroundImageId: backgroundImageId,
        message: null,
      ),
    );
  }
}

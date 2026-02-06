import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';

class AppImage extends StatelessWidget {
  /// Url изображения
  final String url;

  /// Радиус скругления углов изображения
  final double borderRadius;

  /// То, как изображение вписывается в выделяемое пространство
  final BoxFit fit;

  /// Цвет фона
  final Color backgroundColor;

  /// Ширина
  final double? width;

  /// Высота
  final double? height;

  /// Виджет на фоне изображения
  final Widget? background;

  /// Виджет, который показывается во время загрузки изображения
  final Widget? loadingImage;

  /// Виджет, который показывается, если во время загрузки изображения произошла ошибка
  final Widget? errorImage;

  /// Виджет, который будет отрисовываться поверх всего контента
  final Widget? child;

  /// Виджет для отображения картинки
  const AppImage({
    required this.url,
    this.borderRadius = 1000,
    this.fit = BoxFit.cover,
    this.backgroundColor = Colors.transparent,
    this.width,
    this.height,
    this.background,
    this.loadingImage,
    this.errorImage,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(borderRadius),
    child: SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          background != null
              ? background!
              : ColoredBox(
                  color: backgroundColor,
                  child: SizedBox(width: width, height: height),
                ),
          url.isNotEmpty
              ? Image.network(
                  url,
                  fit: fit,
                  width: width,
                  height: height,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                        if (frame == null) {
                          return loadingImage ?? _fallbackImage();
                        }

                        return child;
                      },
                  errorBuilder: (context, error, stackTrace) =>
                      errorImage ?? _fallbackImage(),
                )
              : errorImage ?? _fallbackImage(),
          if (child != null) child!,
        ],
      ),
    ),
  );

  Widget _fallbackImage() => LayoutBuilder(
    builder: (context, constraints) {
      final size = constraints.maxWidth * 0.7;

      return SvgPicture.asset(
        AppIcons.camera,
        height: size,
        width: size,
        colorMapper: const IconColorMapper.filled(color: AppColors.base0),
      );
    },
  );
}

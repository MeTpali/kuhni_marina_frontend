import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';
import '../scroll/optional_scroll_physics.dart';

class AppBottomSheet extends StatefulWidget {
  final String? title;
  final Widget? titleWidget;
  final TextStyle? titleStyle;
  final Widget? child;
  final EdgeInsetsGeometry contentPadding;
  final bool showBackButton;
  final bool showDivider;

  const AppBottomSheet({
    this.title,
    this.titleWidget,
    this.titleStyle,
    this.child,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 14.0),
    this.showBackButton = true,
    this.showDivider = false,
    super.key,
  });

  static const double dismissThreshold = -120;

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  bool isDismissed = false;

  @override
  Widget build(
    BuildContext context,
  ) => NotificationListener<ScrollNotification>(
    onNotification: (notification) {
      if (notification is ScrollUpdateNotification &&
          notification.metrics.pixels <= AppBottomSheet.dismissThreshold) {
        if (!context.mounted || isDismissed) return true;
        unawaited(context.router.maybePop());
        isDismissed = true;
        return true;
      }
      return false;
    },
    child: SingleChildScrollView(
      physics: const OptionalScrollPhysics(bottom: false),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 42.0,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Material(
                  elevation: 0,
                  color: AppColors.brilliance,
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 3,
                            width: 32,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: AppColors.kettleman,
                                borderRadius: BorderRadius.circular(1000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (widget.showBackButton ||
                          widget.title != null ||
                          widget.titleWidget != null) ...[
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              widget.showBackButton
                                  ? IconButton(
                                      padding: EdgeInsets.zero,
                                      style: IconButton.styleFrom(
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        minimumSize: const Size(0, 0),
                                      ),
                                      icon: SvgPicture.asset(
                                        AppIcons.chevronLeft,
                                        height: 20,
                                        width: 20,
                                      ),
                                      onPressed: () async =>
                                          context.router.maybePop(),
                                    )
                                  : const SizedBox(width: 20),
                              Flexible(
                                child:
                                    widget.titleWidget ??
                                    Text(
                                      widget.title ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          widget.titleStyle ??
                                          const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.base100,
                                          ),
                                    ),
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ],
                      const SizedBox(height: 14),
                      if (widget.showDivider)
                        const Divider(
                          thickness: 1,
                          height: 1,
                          color: AppColors.unicornSilver,
                        ),
                      if (widget.child != null)
                        Padding(
                          padding: widget.contentPadding,
                          child: widget.child!,
                        ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.0),
                  child: Transform.rotate(
                    angle: pi - 12 / 180 * pi,
                    child: SvgPicture.asset(
                      AppIcons.star2,
                      height: 116,
                      width: 78,
                      colorMapper: const IconColorMapper(
                        fillColor: AppColors.boysenberryShadow,
                        strokeColor: AppColors.fairway,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(11.0, 27, 0, 0),
                  child: Transform.rotate(
                    angle: 22 / 180 * pi,
                    child: SvgPicture.asset(
                      AppIcons.star1,
                      height: 36,
                      width: 36,
                      colorMapper: const IconColorMapper(
                        fillColor: AppColors.boysenberryShadow,
                        strokeColor: AppColors.fairway,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(54.0, 27, 0, 0),
                  child: Transform.rotate(
                    angle: -14 / 180 * pi,
                    child: SvgPicture.asset(
                      AppIcons.star1,
                      height: 30,
                      width: 30,
                      colorMapper: const IconColorMapper(
                        fillColor: AppColors.boysenberryShadow,
                        strokeColor: AppColors.fairway,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

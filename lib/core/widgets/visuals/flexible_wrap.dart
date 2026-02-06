import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlexibleWrap extends Wrap {
  const FlexibleWrap({
    super.key,
    super.children,
    super.textDirection,
    super.spacing,
    super.runSpacing,
  });

  @override
  RenderWrap createRenderObject(BuildContext context) => RenderFlexibleWrap(
    spacing: spacing,
    textDirection: textDirection ?? Directionality.maybeOf(context),
    runSpacing: runSpacing,
  );
}

class RenderFlexibleWrap extends RenderWrap {
  RenderFlexibleWrap({super.spacing, super.textDirection, super.runSpacing});

  @override
  void performLayout() {
    super.performLayout();
    var child = firstChild;
    final isRtl = textDirection == TextDirection.rtl;
    final parentWidth = constraints.maxWidth;
    double extraWidth = 0.0;
    double maxHeight = 0;
    double x = isRtl ? parentWidth : 0;
    double y = 0;
    double currentRunHeight = 0;
    final List<RenderBox> currentRunChildren =
        []; // Для хранения детей текущей строки

    for (var i = 0; i < childCount; i++) {
      if (child!.size.width == parentWidth) return;
      final double childWidth = child.size.width;

      if (parentWidth.isFinite) {
        final items = (parentWidth / (childWidth + spacing)).floor();
        final remainder = parentWidth - ((childWidth + spacing) * items);
        extraWidth = remainder / items;
      }

      // Первоначальный лейаут для определения естественной высоты
      child.layout(
        BoxConstraints(
          minWidth: childWidth + extraWidth,
          maxWidth: childWidth + extraWidth,
          minHeight: 0,
          maxHeight: double.infinity,
        ),
        parentUsesSize: true,
      );

      final newHeight = child.size.height;
      currentRunHeight = max(currentRunHeight, newHeight);
      currentRunChildren.add(child); // Добавляем ребенка в текущую строку

      x = isRtl
          ? (x - child.size.width - spacing)
          : (x + child.size.width + spacing);

      // Проверка на перенос строки или последний элемент
      if ((isRtl ? (x <= child.size.width) : (x >= parentWidth)) ||
          i == childCount - 1) {
        // Перераспределяем высоту для всех детей в строке
        for (final runChild in currentRunChildren) {
          runChild.layout(
            BoxConstraints.tightFor(
              width: runChild.size.width,
              height:
                  currentRunHeight, // Фиксируем высоту как максимальную в строке
            ),
            parentUsesSize: true,
          );

          // Позиционируем с выравниванием по верхнему краю
          final childX = isRtl
              ? (parentWidth -
                    runChild.size.width -
                    (currentRunChildren.indexOf(runChild) *
                        (runChild.size.width + spacing)))
              : (currentRunChildren.indexOf(runChild) *
                    (runChild.size.width + spacing));

          (runChild.parentData! as WrapParentData).offset = Offset(childX, y);
        }

        x = isRtl ? parentWidth : 0;
        y += currentRunHeight + runSpacing;
        maxHeight = y - runSpacing;
        currentRunHeight = 0;
        currentRunChildren.clear();
      }

      child = childAfter(child);
    }
    size = constraints.constrain(Size(parentWidth, maxHeight));
  }
}

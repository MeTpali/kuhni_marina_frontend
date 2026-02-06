part of 'page_background.dart';

class PaymentBackground extends StatelessWidget {
  const PaymentBackground();

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.base0, AppColors.transparentBlue],
      ),
    ),
    child: CustomMultiChildLayout(
      delegate: _PaymentMultiChildLayoutDelegate(),
      children: [
        LayoutId(
          id: 1,
          child: SvgPicture.asset(
            AppIcons.jupiter,
            colorMapper: const IconColorMapper.filled(
              color: AppColors.lightPeriwinkle,
            ),
          ),
        ),
        LayoutId(
          id: 2,
          child: SvgPicture.asset(
            AppIcons.moonsun,
            colorMapper: const IconColorMapper.filled(
              color: AppColors.lightPeriwinkle,
            ),
          ),
        ),
      ],
    ),
  );
}

class _PaymentMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // Layout

    // jupiter
    layoutChild(
      1,
      BoxConstraints.tight(
        Size(size.width * 332 / 375, size.height * 151 / 698),
      ),
    );

    // moonsun
    layoutChild(
      2,
      BoxConstraints.tight(
        Size(size.width * 256 / 375, size.height * 256 / 698),
      ),
    );

    // Positioning

    // jupiter
    positionChild(1, Offset(size.width * 180 / 375, size.height * 351 / 698));

    // moonsun
    positionChild(
      2,
      Offset(size.width - size.width * 460 / 375, size.height * 401 / 698),
    );
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => true;
}

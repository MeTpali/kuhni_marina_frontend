part of 'page_background.dart';

class RegistrationBackground extends StatelessWidget {
  const RegistrationBackground();

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(color: AppColors.transparentBlue),
    child: CustomMultiChildLayout(
      delegate: _RegistrationMultiChildLayoutDelegate(),
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

class _RegistrationMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // Layout

    // jupiter
    layoutChild(
      1,
      BoxConstraints.tight(
        Size(size.width * 332 / 375, size.height * 151 / 812),
      ),
    );

    // moonsun
    layoutChild(
      2,
      BoxConstraints.tight(
        Size(size.width * 288 / 375, size.height * 278 / 812),
      ),
    );

    // Positioning

    // jupiter
    positionChild(1, Offset(-size.width * 163 / 375, size.height * 612 / 812));

    // moonsun
    positionChild(2, Offset(size.width * 159 / 375, size.height * 633 / 812));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => true;
}

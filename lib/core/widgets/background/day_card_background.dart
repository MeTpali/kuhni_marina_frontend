part of 'page_background.dart';

class DayCardBackground extends StatelessWidget {
  const DayCardBackground();

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
      delegate: _DayCardMultiChildLayoutDelegate(),
      children: [
        LayoutId(
          id: 1,
          child: Transform.rotate(
            angle: -8 * pi / 180,
            child: SvgPicture.asset(
              AppIcons.jupiter,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.transparentBlue,
              ),
            ),
          ),
        ),
        LayoutId(
          id: 2,
          child: Transform.rotate(
            angle: -12 * pi / 180,
            child: SvgPicture.asset(
              AppIcons.halfmoon,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.purpleIllusion,
              ),
            ),
          ),
        ),
        LayoutId(
          id: 3,
          child: SvgPicture.asset(
            AppIcons.star1,
            colorMapper: const IconColorMapper.filled(
              color: AppColors.purpleIllusion,
            ),
          ),
        ),
        LayoutId(
          id: 4,
          child: Transform.rotate(
            angle: 15 * pi / 180,
            child: SvgPicture.asset(
              AppIcons.star,
              colorMapper: const IconColorMapper(
                fillColor: AppColors.coldLips,
                strokeColor: AppColors.transparentBlue,
              ),
            ),
          ),
        ),
        LayoutId(
          id: 5,
          child: Transform.rotate(
            angle: 22 * pi / 180,
            child: SvgPicture.asset(
              AppIcons.ok,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.transparentBlue,
              ),
            ),
          ),
        ),
        LayoutId(
          id: 6,
          child: Transform.rotate(
            angle: 150 * pi / 180,
            child: SvgPicture.asset(
              AppIcons.ok,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.transparentBlue,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class _DayCardMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // Layout

    // jupiter
    layoutChild(
      1,
      BoxConstraints.tight(
        Size(size.width * 245 / 375, size.height * 111 / 812),
      ),
    );

    // halfmoon
    layoutChild(
      2,
      BoxConstraints.tight(Size(size.width * 82 / 375, size.height * 94 / 812)),
    );

    // star1
    layoutChild(
      3,
      BoxConstraints.tight(Size(size.width * 90 / 375, size.height * 90 / 812)),
    );

    // star
    layoutChild(
      4,
      BoxConstraints.tight(Size(size.width * 22 / 375, size.height * 22 / 812)),
    );

    // ok 1
    layoutChild(
      5,
      BoxConstraints.tight(Size(size.width * 47 / 375, size.height * 66 / 812)),
    );

    // ok 2
    layoutChild(
      6,
      BoxConstraints.tight(Size(size.width * 47 / 375, size.height * 66 / 812)),
    );

    // Positioning

    // jupiter
    positionChild(1, Offset(size.width * 162 / 375, -size.height * 27 / 812));

    // halfmoon
    positionChild(2, Offset(size.width * 285 / 375, size.height * 604 / 812));

    // star1
    positionChild(3, Offset(size.width * 72 / 375, size.height * 585 / 812));

    // star
    positionChild(4, Offset(size.width * 0 / 375, size.height * 90 / 812));

    // ok 1
    positionChild(5, Offset(size.width * 330 / 375, size.height * 348 / 812));

    // ok 2
    positionChild(6, Offset(size.width * 10 / 375, size.height * 472 / 812));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => true;
}

part of 'page_background.dart';

class UniverseAnswerBackground extends StatelessWidget {
  const UniverseAnswerBackground();

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
      delegate: _UniverseAnswerMultiChildLayoutDelegate(),
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
            angle: pi,
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
      ],
    ),
  );
}

class _UniverseAnswerMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
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
      BoxConstraints.tight(Size(size.width * 28 / 375, size.height * 28 / 812)),
    );

    // ok
    layoutChild(
      5,
      BoxConstraints.tight(Size(size.width * 47 / 375, size.height * 63 / 812)),
    );

    // Positioning

    // jupiter
    positionChild(1, Offset(size.width * 47 / 375, -size.height * 10 / 812));

    // halfmoon
    positionChild(
      2,
      Offset(size.width - size.width * 74 / 375, size.height * 604 / 812),
    );

    // star1
    positionChild(3, Offset(size.width * 72 / 375, size.height * 585 / 812));

    // star
    positionChild(4, Offset(-size.width * 12 / 375, size.height * 372 / 812));

    // ok
    positionChild(
      5,
      Offset(size.width - size.width * 33 / 375, size.height * 348 / 812),
    );
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => true;
}

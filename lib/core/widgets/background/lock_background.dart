part of 'page_background.dart';

class LockBackground extends StatelessWidget {
  const LockBackground();

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: AppColors.fairway,
    child: CustomMultiChildLayout(
      delegate: _LockMultiChildLayoutDelegate(),
      children: [
        LayoutId(id: 1, child: Image.asset(AppIcons.lock)),
        LayoutId(
          id: 2,
          child: Transform.rotate(
            angle: -18 * pi / 180,
            child: Image.asset(AppIcons.starMosh1),
          ),
        ),
        LayoutId(
          id: 3,
          child: Transform.rotate(
            angle: 21 * pi / 180,
            child: Image.asset(AppIcons.starMosh2),
          ),
        ),
        LayoutId(
          id: 4,
          child: Transform.rotate(
            angle: 14 * pi / 180,
            child: Image.asset(AppIcons.starMosh3),
          ),
        ),
        LayoutId(
          id: 5,
          child: Transform.rotate(
            angle: 14 * pi / 180,
            child: Image.asset(AppIcons.starMosh3),
          ),
        ),
        LayoutId(
          id: 6,
          child: Transform.rotate(
            angle: -15 * pi / 180,
            child: Image.asset(AppIcons.starMosh4),
          ),
        ),
        LayoutId(
          id: 7,
          child: Transform.rotate(
            angle: -15 * pi / 180,
            child: Image.asset(AppIcons.starMosh4),
          ),
        ),
      ],
    ),
  );
}

class _LockMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    // Layout

    // lock
    layoutChild(
      1,
      BoxConstraints.tight(
        Size(size.width * 150 / 375, size.height * 175 / 812),
      ),
    );

    // star mosh 1
    layoutChild(
      2,
      BoxConstraints.tight(Size(size.width * 50 / 375, size.height * 50 / 812)),
    );

    // star mosh 2
    layoutChild(
      3,
      BoxConstraints.tight(Size(size.width * 55 / 375, size.height * 55 / 812)),
    );

    // star mosh 3.1
    layoutChild(
      4,
      BoxConstraints.tight(Size(size.width * 23 / 375, size.height * 23 / 812)),
    );

    // star mosh 3.2
    layoutChild(
      5,
      BoxConstraints.tight(Size(size.width * 23 / 375, size.height * 23 / 812)),
    );

    // star mosh 4.1
    layoutChild(
      6,
      BoxConstraints.tight(Size(size.width * 18 / 375, size.height * 18 / 812)),
    );

    // star mosh 4.2
    layoutChild(
      7,
      BoxConstraints.tight(Size(size.width * 18 / 375, size.height * 18 / 812)),
    );

    // Positioning

    /// lock
    positionChild(
      1,
      Offset(
        size.width / 2 - (size.width * 150 / 375) / 2,
        size.height * 44 / 812,
      ),
    );

    // star mosh 1
    positionChild(2, Offset(size.width * 56 / 375, size.height * 190 / 812));

    // star mosh 2
    positionChild(
      3,
      Offset(size.width - size.width * 108 / 375, size.height * 28 / 812),
    );

    // star mosh 3.1
    positionChild(4, Offset(size.width * 72 / 375, size.height * 67 / 812));

    // star mosh 3.2
    positionChild(5, Offset(size.width * 265 / 375, size.height * 218 / 812));

    // star mosh 4.1
    positionChild(6, Offset(size.width * 100 / 375, size.height * 46 / 812));

    // star mosh 4.2
    positionChild(7, Offset(size.width * 293 / 375, size.height * 197 / 812));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => true;
}

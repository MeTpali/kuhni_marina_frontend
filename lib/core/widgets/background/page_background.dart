import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_icons.dart';
import '../../parsers/icon_color_mapper.dart';

part 'day_card_background.dart';
part 'lock_background.dart';
part 'payment_background.dart';
part 'registration_background.dart';
part 'simple_background.dart';
part 'universe_answer_background.dart';

class PageBackground extends StatelessWidget {
  final Widget background;
  final Widget child;
  const PageBackground({
    required this.background,
    required this.child,
    super.key,
  });

  const PageBackground.simple({required this.child, super.key})
    : background = const SimpleBackground();

  const PageBackground.registration({required this.child, super.key})
    : background = const RegistrationBackground();

  const PageBackground.payment({required this.child, super.key})
    : background = const PaymentBackground();

  const PageBackground.dayCard({required this.child, super.key})
    : background = const DayCardBackground();

  const PageBackground.lock({required this.child, super.key})
    : background = const LockBackground();

  const PageBackground.universeAnswer({required this.child, super.key})
    : background = const UniverseAnswerBackground();

  @override
  Widget build(BuildContext context) => Stack(children: [background, child]);
}

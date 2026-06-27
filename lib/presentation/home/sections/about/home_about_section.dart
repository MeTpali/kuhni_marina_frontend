import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/home_sizes.dart';
import '../../../../core/constants/screen_size.dart';
import '../../../../core/widgets/reveal/reveal_wrap.dart';
import '../../../shared/section/section_backdrop.dart';
import '../../../shared/section/section_split_layout.dart';

class _AboutStep {
  const _AboutStep({required this.title, required this.body});

  final String title;
  final String body;
}

/// Секция «О компании» и этапы работы на главной.
class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({super.key});

  static const _aboutTitle = 'О компании';
  static const _stepsTitle = 'От идеи до готовой кухни — всего 5 этапов';

  static const _lead = 'Мы создаём кухни, в которых приятно жить';

  static const _paragraphs = [
    'Кухня — это больше, чем мебель. Здесь начинается утро, собирается семья за ужином, проходят праздники и тёплые встречи с близкими. Именно поэтому мы подходим к каждому проекту индивидуально и создаём кухни, которые становятся естественной частью дома.',
    'Наша компания специализируется на проектировании, изготовлении и установке кухонь по индивидуальным размерам. Мы сопровождаем клиента на каждом этапе — от первой консультации и замера помещения до монтажа готовой мебели. Такой подход позволяет учитывать особенности планировки, пожелания по дизайну и требования к функциональности будущей кухни.',
    'В работе мы используем современные материалы и надёжную фурнитуру от проверенных производителей. Особое внимание уделяется качеству сборки, точности изготовления и долговечности всех элементов конструкции. Каждая кухня проходит контроль качества перед передачей заказчику.',
    'За годы работы мы реализовали множество проектов различной сложности — от компактных кухонь для городских квартир до просторных кухонных пространств в частных домах. Для нас важно не просто изготовить мебель, а создать удобное и красивое пространство, которым владельцы будут пользоваться долгие годы.',
    'Мы ценим доверие наших клиентов и строим работу на принципах открытости, ответственности и соблюдения договорённостей. Поэтому каждый проект выполняется по согласованному плану, с прозрачными условиями сотрудничества и вниманием к деталям.',
  ];

  static const _steps = [
    _AboutStep(
      title: '1. Консультация и замер',
      body:
          'На первой встрече обсуждаем ваши пожелания, стиль и бюджет. Специалист выезжает на объект, выполняет точные замеры и фиксирует особенности планировки.',
    ),
    _AboutStep(
      title: '2. Разработка проекта',
      body:
          'На основе замеров создаём проект кухни с расстановкой мебели, подбором материалов и фурнитуры. Вносим правки до полного согласования.',
    ),
    _AboutStep(
      title: '3. Заключение договора',
      body:
          'После утверждения проекта фиксируем сроки, стоимость и комплектацию. Все условия прозрачны и прописаны в договоре.',
    ),
    _AboutStep(
      title: '4. Изготовление',
      body:
          'Кухня изготавливается на производстве с контролем качества на каждом этапе — от раскроя материалов до сборки модулей.',
    ),
    _AboutStep(
      title: '5. Доставка и монтаж',
      body:
          'Готовые элементы доставляются на объект и устанавливаются профессиональной бригадой. После монтажа проводим финальную проверку и передаём кухню заказчику.',
    ),
  ];

  static const _titleShadows = [
    Shadow(color: Color(0x99000000), blurRadius: 10, offset: Offset(0, 2)),
    Shadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 1)),
  ];

  static const _bodyShadows = [
    Shadow(color: Color(0x73000000), blurRadius: 8, offset: Offset(0, 1)),
  ];

  static const _backdropStyle = SectionBackdropStyle.glassDark;
  static const _contentMaxWidth = 1100.0;
  static const _bodyMaxWidth = 640.0;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final glassVerticalEdge = screenSize.sectionGlassBlockVerticalMargin;
    final horizontalPad = screenSize.horizontalPadding;
    final useSideBySide = screenSize.isMediumOrExpanded;

    final titleStyle = Theme.of(context).textTheme.headlineMedium?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: screenSize.headlineMediumSize,
      shadows: _titleShadows,
    );

    final leadStyle = Theme.of(context).textTheme.titleLarge?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: screenSize.headlineSmallSize,
      height: 1.35,
      shadows: _bodyShadows,
    );

    final bodyStyle = Theme.of(context).textTheme.bodyLarge?.copyWith(
      color: AppColors.white.withValues(alpha: 0.95),
      fontSize: screenSize.bodyLargeSize,
      height: 1.55,
      shadows: _bodyShadows,
    );

    final stepTitleStyle = Theme.of(context).textTheme.titleMedium?.copyWith(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: screenSize.bodyLargeSize + 2,
      height: 1.35,
      shadows: _bodyShadows,
    );

    final aboutText = RevealWrap(
      key: const ValueKey('about-section-text'),
      variant: RevealEntranceVariant.fade,
      resetWhenLeavingViewport: true,
      child: Column(
        crossAxisAlignment: useSideBySide
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          Text(
            _lead,
            style: leadStyle,
            textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
          ),
          SizedBox(height: screenSize.sectionTitleBottomSpacing),
          for (var i = 0; i < _paragraphs.length; i++) ...[
            if (i > 0) SizedBox(height: screenSize.sectionTitleBottomSpacing),
            Text(
              _paragraphs[i],
              style: bodyStyle,
              textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
            ),
          ],
        ],
      ),
    );

    final stepsBody = Column(
      crossAxisAlignment: useSideBySide
          ? CrossAxisAlignment.stretch
          : CrossAxisAlignment.center,
      children: [
        for (var i = 0; i < _steps.length; i++) ...[
          if (i > 0) ...[
            SizedBox(height: screenSize.sectionTitleBottomSpacing),
            RevealWrap(
              key: ValueKey('about-step-divider-$i'),
              variant: RevealEntranceVariant.fade,
              resetWhenLeavingViewport: true,
              child: Divider(
                color: AppColors.white.withValues(alpha: 0.28),
                height: 1,
                thickness: 1,
              ),
            ),
            SizedBox(height: screenSize.sectionTitleBottomSpacing),
          ],
          RevealWrap(
            key: ValueKey('about-step-$i'),
            variant: RevealEntranceVariant.fadeSlideFromLeft,
            resetWhenLeavingViewport: true,
            child: Column(
              crossAxisAlignment: useSideBySide
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Text(
                  _steps[i].title,
                  style: stepTitleStyle,
                  textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
                ),
                SizedBox(height: screenSize.sectionTitleBottomSpacing * 0.35),
                Text(
                  _steps[i].body,
                  style: bodyStyle,
                  textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ],
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: glassVerticalEdge),
        SectionSplitLayout(
          horizontalPadding: horizontalPad,
          columnGap: screenSize.sectionTitleBottomSpacing * 1.25,
          sideBySide: useSideBySide,
          contentMaxWidth: _contentMaxWidth,
          bodyMaxWidth: _bodyMaxWidth,
          title: RevealWrap(
            key: const ValueKey('about-steps-title'),
            variant: RevealEntranceVariant.fadeSlideFromTop,
            resetWhenLeavingViewport: true,
            child: Text(
              _stepsTitle,
              style: titleStyle,
              textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
            ),
          ),
          body: stepsBody,
        ),
        SizedBox(height: screenSize.sectionSpacing * 1.5),
        SectionSplitLayout(
          horizontalPadding: horizontalPad,
          columnGap: screenSize.sectionTitleBottomSpacing * 1.25,
          sideBySide: useSideBySide,
          contentMaxWidth: _contentMaxWidth,
          bodyMaxWidth: _bodyMaxWidth,
          title: RevealWrap(
            key: const ValueKey('about-section-title'),
            variant: RevealEntranceVariant.fadeSlideFromTop,
            resetWhenLeavingViewport: true,
            child: Text(
              _aboutTitle,
              style: titleStyle,
              textAlign: useSideBySide ? TextAlign.start : TextAlign.center,
            ),
          ),
          body: aboutText,
        ),
        SizedBox(height: glassVerticalEdge),
      ],
    );

    return SectionBackdrop(style: _backdropStyle, child: content);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/product_card_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../providers/home_di.dart';
import 'home_products_section.dart';

/// Секция акций на главной: список акций по приоритету.
/// У акции может быть баннер [Campaign.bannerImageUrl]; товары — через каталог с фильтром по id акции.
class HomeCampaignsSection extends ConsumerWidget {
  const HomeCampaignsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(HomeDi.homeCampaignsProvider);
    return campaignsAsync.when(
      data: (campaigns) {
        if (campaigns.isEmpty) return const SizedBox.shrink();
        final screenSize = context.screenSize;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: screenSize.sectionSpacing),
            for (var i = 0; i < campaigns.length; i++) ...[
              if (i > 0) SizedBox(height: screenSize.sectionSpacing),
              _CampaignBlock(campaign: campaigns[i]),
            ],
          ],
        );
      },
      loading: () => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: context.screenSize.sectionSpacing),
          const _CampaignsSectionPlaceholder(title: 'Акции'),
        ],
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

class _CampaignBlock extends ConsumerWidget {
  const _CampaignBlock({required this.campaign});

  final Campaign campaign;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = context.screenSize;
    final productsAsync = ref.watch(
      HomeDi.homeCampaignProductsProvider(campaign.id),
    );

    return productsAsync.when(
      data: (catalog) {
        if (catalog.items.isEmpty) return const SizedBox.shrink();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (campaign.bannerImageUrl != null &&
                campaign.bannerImageUrl!.isNotEmpty) ...[
              _CampaignBanner(
                imageUrl: campaign.bannerImageUrl!,
                title: campaign.name,
              ),
              SizedBox(height: screenSize.sectionSpacing),
            ],
            HomeProductsSection(
              title: campaign.name,
              productList: catalog.items,
            ),
          ],
        );
      },
      loading: () => _CampaignsSectionPlaceholder(title: campaign.name),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

/// Баннер одной акции: картинка на всю ширину с отступами по горизонтали, поверх — заголовок.
class _CampaignBanner extends StatelessWidget {
  const _CampaignBanner({required this.imageUrl, required this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    final s = context.screenSize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: s.horizontalPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(s.cardBorderRadius),
        child: SizedBox(
          height: s.campaignBannerHeight,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              AppImage(
                url: imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
                borderRadius: 0,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.neutralBlack.withValues(alpha: 0.5),
                      AppColors.neutralBlack.withValues(alpha: 0.0),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(s.bannerPadding),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: s.headlineSmallSize,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CampaignsSectionPlaceholder extends StatelessWidget {
  const _CampaignsSectionPlaceholder({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final cardHeight = screenSize.productCardDefaultHeight;
    final cardWidth = screenSize.productCardDefaultWidth;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: AppColors.accent,
              fontSize: screenSize.headlineSmallSize,
            ),
          ),
          SizedBox(height: screenSize.sectionTitleBottomSpacing),
          SizedBox(
            height: cardHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (_, __) =>
                  SizedBox(width: screenSize.horizontalPadding),
              itemBuilder: (_, __) => _ProductCardSkeleton(
                width: cardWidth,
                borderRadius: screenSize.cardBorderRadius,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductCardSkeleton extends StatelessWidget {
  const _ProductCardSkeleton({required this.width, required this.borderRadius});

  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    decoration: BoxDecoration(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: SizedBox()),
        SizedBox(height: 8),
        Expanded(child: SizedBox()),
      ],
    ),
  );
}

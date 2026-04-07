import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/home_sizes.dart';
import '../../../core/constants/screen_size.dart';
import '../../../domain/models/campaign/campaign.dart';
import '../../widgets/picker_loop_carousel.dart';
import '../providers/home_di.dart';

/// Секция акций: горизонтальная «picker»-карусель.
///
/// В окне видно 3 изображения (между ними по 14 px).
/// Центральное изображение почти прямое, к краям — всё сильнее изгиб сверху и
/// снизу, создавая вогнутый профиль (как у горизонтального picker).
class HomeCampaignsSection extends ConsumerWidget {
  const HomeCampaignsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final campaignsAsync = ref.watch(HomeDi.homeCampaignsProvider);
    final s = context.screenSize;

    return campaignsAsync.when(
      data: (campaigns) {
        final items =
            campaigns
                .where((c) => (c.bannerImageUrl ?? '').trim().isNotEmpty)
                .toList()
              ..sort((a, b) => b.priority.compareTo(a.priority));

        if (items.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: EdgeInsets.only(top: s.sectionSpacing),
          child: PickerLoopCarousel<Campaign>(
            items: items,
            itemKey: (c) => c.id,
            height: PickerLoopCarousel.heightForBannerAnchor(
              bannerHeight: s.bannerHeight,
            ),
            centerInset: PickerLoopCarousel.centerInsetForBannerAnchor(
              bannerHeight: s.bannerHeight,
            ),
            itemBuilder: (context, campaign, _) =>
                _CampaignImageCard(campaign: campaign),
          ),
        );
      },
      loading: () => SizedBox(
        height: PickerLoopCarousel.heightForBannerAnchor(
          bannerHeight: s.bannerHeight,
        ),
        child: ColoredBox(color: AppColors.surfaceElevated),
      ),
      error: (_, __) => const SizedBox.shrink(),
    );
  }
}

class _CampaignImageCard extends StatelessWidget {
  const _CampaignImageCard({required this.campaign});

  final Campaign campaign;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    alignment: Alignment.center,
    color: Colors.red,
    child: Text(
      campaign.name,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

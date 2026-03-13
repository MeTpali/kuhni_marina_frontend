import 'package:flutter/material.dart' hide Banner;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/constants/app_spacing.dart';
import '../../../core/constants/screen_size.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../domain/models/banner/banner.dart';
import '../providers/home_providers.dart';

/// Секция баннеров на главной: карусель или один баннер.
class HomeBannerSection extends ConsumerWidget {
  const HomeBannerSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncBanners = ref.watch(homeBannersProvider);
    return asyncBanners.when(
      data: (banners) {
        if (banners.isEmpty) {
          return _PlaceholderBanner(
            title: 'Кухни элитного класса',
            subtitle: 'Индивидуальный подход и премиальные материалы',
          );
        }
        if (banners.length == 1) {
          return _BannerTile(banner: banners.first);
        }
        return _BannerCarousel(banners: banners);
      },
      loading: () => const _BannerSkeleton(),
      error: (_, __) => _PlaceholderBanner(
        title: 'Кухни элитного класса',
        subtitle: 'Индивидуальный подход и премиальные материалы',
      ),
    );
  }
}

class _BannerTile extends StatelessWidget {
  const _BannerTile({required this.banner});

  final Banner banner;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isCompact = context.screenSize.isCompact;
    final height = isCompact ? 200.0 : 320.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: ClipRRect(
        borderRadius: AppRadius.lgAll,
        child: SizedBox(
          width: size.width - AppSpacing.lg * 2,
          height: height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              AppImage(
                url: banner.imageUrl,
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
                  padding: const EdgeInsets.all(AppSpacing.xl),
                  child: Text(
                    banner.title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
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

class _BannerCarousel extends StatelessWidget {
  const _BannerCarousel({required this.banners});

  final List<Banner> banners;

  @override
  Widget build(BuildContext context) {
    final isCompact = context.screenSize.isCompact;
    final height = isCompact ? 200.0 : 320.0;
    return SizedBox(
      height: height,
      child: PageView.builder(
        itemCount: banners.length,
        itemBuilder: (context, index) {
          final banner = banners[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
            child: _BannerTile(banner: banner),
          );
        },
      ),
    );
  }
}

class _PlaceholderBanner extends StatelessWidget {
  const _PlaceholderBanner({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final isCompact = context.screenSize.isCompact;
    final height = isCompact ? 200.0 : 320.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: AppRadius.lgAll,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.primary, AppColors.primaryVariant],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.xl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BannerSkeleton extends StatelessWidget {
  const _BannerSkeleton();

  @override
  Widget build(BuildContext context) {
    final isCompact = context.screenSize.isCompact;
    final height = isCompact ? 200.0 : 320.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: AppRadius.lgAll,
          color: AppColors.neutral10,
        ),
      ),
    );
  }
}

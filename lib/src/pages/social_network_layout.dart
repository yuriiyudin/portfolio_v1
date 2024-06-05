import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yudin_v2/src/extensions/up_effect.dart';
import 'package:yudin_v2/src/utils/app_assets.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class SocialNetworkSectionLayout extends StatelessWidget {
  const SocialNetworkSectionLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const SocialNetworkSectionDesktop(),
      tablet: (_) => const SocialNetworkSectionTablet(),
      mobile: (_) => const SocialNetworkSectionMobile(),
    );
  }
}

//================= DESKTOP =============

class SocialNetworkSectionDesktop extends StatelessWidget {
  const SocialNetworkSectionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1269,
      margin: const EdgeInsets.symmetric(horizontal: 149, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '® 2024 All right Reserver',
            style: TextStyle(fontSize: 16, color: AppColors.allRighstColor),
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.inIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.ballIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.facebookIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.instaIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.twitterIcon,
                width: 32,
              ).upEffect(),
            ],
          )
        ],
      ),
    );
  }
}

//================== TABLET ==================

class SocialNetworkSectionTablet extends StatelessWidget {
  const SocialNetworkSectionTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1269,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '® 2024 All right Reserver',
            style: TextStyle(fontSize: 16, color: AppColors.allRighstColor),
          ),
          Row(
            children: [
              Image.asset(
                AppAssets.inIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.ballIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ).upEffect(),
              Image.asset(
                AppAssets.facebookIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.instaIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.twitterIcon,
                width: 32,
              ).upEffect(),
            ],
          )
        ],
      ),
    );
  }
}

//============== MOBILE ==================
class SocialNetworkSectionMobile extends StatelessWidget {
  const SocialNetworkSectionMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1269,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.inIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.ballIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.facebookIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.instaIcon,
                width: 32,
              ).upEffect(),
              const SizedBox(
                width: 21,
              ),
              Image.asset(
                AppAssets.twitterIcon,
                width: 32,
              ).upEffect(),
            ],
          ),
          const SizedBox(height: 32,),
               const Text(
            '® 2024 All right Reserver',
            style: TextStyle(fontSize: 16, color: AppColors.allRighstColor),
          ),
        ],
      ),
    );
  }
}

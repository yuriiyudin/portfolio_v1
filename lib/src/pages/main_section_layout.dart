import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:yudin_v2/src/utils/app_assets.dart';
import 'package:yudin_v2/src/utils/colors.dart';
import 'package:yudin_v2/src/utils/globals.dart';
import 'package:yudin_v2/src/utils/text.dart';
import 'package:yudin_v2/src/widgets/main_contact_me_button_widget.dart';

class MainSectionLayout extends StatelessWidget {
  const MainSectionLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const MainSectionDesktop(),
      tablet: (_) => const MainSectionTablet(),
      mobile: (_) => const MainSectionMobile(),
    );
  }
}

// ========== DESKTOP ============

class MainSectionDesktop extends StatelessWidget {
  const MainSectionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: const EdgeInsets.only(left: 234, right: 234, top: 81),
        width: 1025,
        height: 764,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.coverGridBg)),
          color: AppColors.scaffoldBackground,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 137,
            ),
            Image.asset(AppAssets.avatar),
            Text(
              'Yurii Yudin',
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 63, color: AppColors.white)),
            ),
            GradientText('Flutter Developer',
                style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600)), colors: AppColors.gradientText),
            Text(mainSectionTextDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: AppColors.mainSectionTextColor, fontWeight: FontWeight.w500, fontSize: 19, height: 1.7),
                )),
            const SizedBox(height: 40),
            MainContactMeButtonWidget(
              onTap: () {
                itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeInOutCubic,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// ========== TABLET ============

class MainSectionTablet extends StatelessWidget {
  const MainSectionTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
        width: 800,
        height: 764,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.coverGridBg)),
          color: AppColors.scaffoldBackground,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 137,
            ),
            Image.asset(AppAssets.avatar),
            Text(
              'Yurii Yudin',
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 63, color: AppColors.white)),
            ),
            GradientText(
              'Flutter Developer',
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
              colors: const [
                Color(0xFF4FC3F7),
                Colors.white,
              ],
            ),
            Text(mainSectionTextMobile,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: AppColors.mainSectionTextColor, fontWeight: FontWeight.w500, fontSize: 19, height: 1.7),
                )),
            const SizedBox(height: 40),
            MainContactMeButtonWidget(
              onTap: () {
                itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeInOutCubic,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// ========== MOBILE ============

class MainSectionMobile extends StatelessWidget {
  const MainSectionMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 30, right: 37),
      width: 339,
      height: 564,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.coverGridBg), fit: BoxFit.cover),
        color: AppColors.scaffoldBackground,
      ),
      child: FittedBox(
        child: Column(
          children: [
            Image.asset(AppAssets.avatar),
            Text(
              'Yurii Yudin',
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 63, color: AppColors.white)),
            ),
            GradientText(
              'Flutter Developer',
              style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
              colors: const [
                Color(0xFF4FC3F7),
                Colors.white,
              ],
            ),
            Text(mainSectionTextMobile,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(color: AppColors.mainSectionTextColor, fontWeight: FontWeight.w500, fontSize: 19, height: 1.7),
                )),
            const SizedBox(height: 40),
            MainContactMeButtonWidget(
              onTap: () {
                itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeInOutCubic,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

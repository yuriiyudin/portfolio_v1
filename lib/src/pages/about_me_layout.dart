import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:yudin_v2/src/utils/colors.dart';
import 'package:yudin_v2/src/utils/text.dart';
import 'package:yudin_v2/src/widgets/download_resume_button.dart';

class AboutMeLayout extends StatelessWidget {
  const AboutMeLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const AboutMeDesktop(),
      tablet: (_) => const AboutMeTablet(),
      mobile: (_) => const AboutMeMobile(),
    );
  }
}

// ================ DESKTOP ================

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        width: 840,
        child: Column(
          children: [
            Text('About Me',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: AppColors.white,
                  ),
                )),
            GradientText(
              'Get to know me',
              style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              colors: AppColors.gradientText,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(aboutMeTextPartOneDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.aboutMeText,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartTwoDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartThreeDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              'By the way, I have a pretty good knowledge of English...',
              style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.grey)),
            ),
               const SizedBox(
              height: 40,
            ),
            const DownloadResumeButtonWidget()
          ],
        ),
      ),
    );
  }
}

// ================ TABLET ================

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        width: 840,
        child: Column(
          children: [
            Text('About Me',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: AppColors.white,
                  ),
                )),
            GradientText(
              'Get to know me',
              style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
              colors: AppColors.gradientText,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(aboutMeTextPartOneDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: AppColors.aboutMeText,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartTwoDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartThreeDesktop,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 17, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              'By the way, I have a pretty good knowledge of English...',
              style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.grey)),
            ),
               const SizedBox(
              height: 40,
            ),
            const DownloadResumeButtonWidget()
          ],
        ),
      ),
    );
  }
}

// ================ MOBILE ================

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        margin: const EdgeInsets.only(top: 100),
        width: 840,
        child: Column(
          children: [
            Text('About Me',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 52,
                    color: AppColors.white,
                  ),
                )),
            GradientText(
              'Get to know me',
              style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
              colors: AppColors.gradientText,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(aboutMeTextPartOneMobile,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: AppColors.aboutMeText,
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartTwoMobile,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 20,
            ),
            Text(aboutMeTextPartThreeMobile,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.aboutMeText))),
            const SizedBox(
              height: 30,
            ),
            Text(
              textAlign: TextAlign.center,
              'By the way, I have a pretty good knowledge of English...',
              style: GoogleFonts.inter(textStyle: const TextStyle(color: Colors.grey, fontSize: 19,)),
            ),
            const SizedBox(
              height: 40,
            ),
            const DownloadResumeButtonWidget()
          ],
        ),
      ),
    );
  }
}

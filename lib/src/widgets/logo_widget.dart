import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class LogoWidgetDesktop extends StatelessWidget {
  const LogoWidgetDesktop({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        'Y.Y.',
        style: GoogleFonts.seymourOne(
          textStyle: const TextStyle(
            color: AppColors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

class LogoWidgetMobile extends StatelessWidget {
  const LogoWidgetMobile({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        'Y.Y.',
        style: GoogleFonts.seymourOne(
          textStyle: const TextStyle(
            color: AppColors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

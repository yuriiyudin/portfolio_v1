import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class MainContactMeButtonWidget extends StatelessWidget {
  const MainContactMeButtonWidget({
    super.key, required this.onTap,
  });

final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onTap();
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 13.5),
        fixedSize: const Size(187, 55),
        side: const BorderSide(color: AppColors.contactMeTopButtonBorder),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(75),
        ),
      ),
      child: Text('Contact me',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: AppColors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}

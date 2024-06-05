import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class DownloadResumeButtonWidget extends StatelessWidget {
  const DownloadResumeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        //TODO: move to contact me
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 13.5),
        fixedSize: const Size(230, 70),
        side: const BorderSide(color: AppColors.contactMeTopButtonBorder),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(75),
        ),
      ),
      child: Text('Download Resume',
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
    );
  }
}

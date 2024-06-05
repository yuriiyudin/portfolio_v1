import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key, required this.onTap, required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
       onTap();
      },
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 13.5),
        fixedSize: const Size(210, 56),
        side: const BorderSide(color: AppColors.contactMeTopButtonBorder),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(75),
        ),
      ),
      child: Text(title,
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

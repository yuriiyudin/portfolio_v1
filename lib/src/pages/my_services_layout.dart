import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:yudin_v2/src/data/services_items.dart';
import 'package:yudin_v2/src/utils/app_assets.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class MyServicesLayout extends StatelessWidget {
  const MyServicesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const MyServicesGridMultiScreen(),
      tablet: (_) => const MyServicesGridMultiScreen(),
      mobile: (_) => const MyServicesGridMultiScreen(),
    );
  }
}

// =========== DESKTOP&MOBILE =================

class MyServicesGridMultiScreen extends StatelessWidget {
  const MyServicesGridMultiScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 921,
      margin: const EdgeInsets.only(top: 140),
      child: Column(
        children: [
          Text('What i do',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: AppColors.white),
              )),
          GradientText('My services',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              colors: AppColors.gradientText),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            width: 921,
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.center,
              spacing: 20,
              children: [
                ...myServiceList.map(
                  (service) => ServiceItemWidget(
                    service: service,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
    required this.service,
  });

  final MyService service;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return width > 920 && service.title == 'Parsers/Bots'
        ?
        //SPECIAL LONG CONTAINER WITH IMAGE
        Container(
            height: 273,
            width: 620,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.gradientServiceBox,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26, top: 29, right: 20),
                  child: SizedBox(
                    width: 310,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(service.logoImagePath),
                        const SizedBox(
                          height: 19,
                        ),
                        Text(service.title,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.white),
                            )),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(service.description,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 14,
                                color: AppColors.serviceItemDescription,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Image.asset(AppAssets.aiPic)
              ],
            ),
          )
        :
        // SIMPLE BOX SERVICE
        Container(
            height: 274,
            width: 289,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.gradientServiceBox,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 26, top: 29, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(service.logoImagePath),
                  const SizedBox(
                    height: 19,
                  ),
                  Text(service.title,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.white),
                      )),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(service.description,
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: AppColors.serviceItemDescription,
                        ),
                      )),
                ],
              ),
            ),
          );
  }
}

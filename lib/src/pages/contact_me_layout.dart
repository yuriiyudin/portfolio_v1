import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class ContactFormLayout extends StatelessWidget {
  const ContactFormLayout({super.key, required this.itemScrollController});

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => ContactFormMultiScreen(
        itemScrollController: itemScrollController,
      ),
      tablet: (_) => ContactFormMultiScreen(
        itemScrollController: itemScrollController,
      ),
      mobile: (_) => ContactFormMultiScreen(
        itemScrollController: itemScrollController,
      ),
    );
  }
}

class ContactFormMultiScreen extends StatelessWidget {
  const ContactFormMultiScreen({
    super.key,
    required this.itemScrollController,
  });
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200, left: 30, right: 30, bottom: 30),
      width: 696,
      child: Column(
        children: [
          const Text(
            'Get In Touch',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: AppColors.white),
          ),
          GradientText(
            'Lets work together',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            colors: AppColors.gradientText,
          ),
          const SizedBox(
            height: 80,
          ),
          // NAME TextField

          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: SizedBox(
              width: 696,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white, fontSize: 18),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'John Brown',
                      hintStyle: TextStyle(fontSize: 15, color: AppColors.hintForm),
                      filled: true,
                      fillColor: AppColors.scaffoldBackground,
                      focusColor: AppColors.scaffoldBackground,
                      hoverColor: AppColors.scaffoldBackground,
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 127, 128, 131))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.focusedBorderTextField)),
                      border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.borderForm)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // EMAIL TextField

          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: SizedBox(
              width: 696,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'example@email.com',
                        style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white, fontSize: 18),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'John Brown',
                      hintStyle: TextStyle(fontSize: 15, color: AppColors.hintForm),
                      filled: true,
                      fillColor: AppColors.scaffoldBackground,
                      focusColor: AppColors.scaffoldBackground,
                      hoverColor: AppColors.scaffoldBackground,
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 127, 128, 131))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.focusedBorderTextField)),
                      border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.borderForm)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // MESSAGE TextField

          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 20),
            child: SizedBox(
              width: 696,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Message',
                      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white, fontSize: 18),
                    ),
                  ),
                   SizedBox(
                    height: 5,
                  ),
                  TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15, color: AppColors.hintForm),
                      filled: true,
                      fillColor: AppColors.scaffoldBackground,
                      focusColor: AppColors.scaffoldBackground,
                      hoverColor: AppColors.scaffoldBackground,
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 127, 128, 131))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.focusedBorderTextField)),
                      border: OutlineInputBorder(borderSide: BorderSide(color: AppColors.borderForm)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 696,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: AppColors.white,
                    fixedSize: Size(MediaQuery.of(context).size.width, 50)),
                onPressed: () {
                  //TODO: SEND MESSAGE
                },
                child: const Text(
                  'Get in Touch',
                  style: TextStyle(color: AppColors.black),
                )),
          )
        ],
      ),
    );
  }
}

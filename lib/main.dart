import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yudin_v2/src/pages/web_site.dart';
import 'package:yudin_v2/src/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints.builder(child: child!, breakpoints: [
        const Breakpoint(start: 0, end: 499, name: MOBILE),
        const Breakpoint(start: 500, end: 800, name: TABLET),
        const Breakpoint(start: 1200, end: double.infinity, name: DESKTOP),
      ]),
      home: const WebSite(),
    );
  }
}

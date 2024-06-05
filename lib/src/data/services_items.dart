
import 'package:yudin_v2/src/utils/app_assets.dart';

class MyService {
  final String logoImagePath;
  final String title;
  final String description;

  MyService({
    required this.logoImagePath,
    required this.title,
    required this.description,
  });
}

List<MyService> myServiceList = [
  MyService(
    logoImagePath: AppAssets.ideaIcon,
    title: 'UX/UI',
    description:
        'I  recently completed few courses\nin UI/UX design, gaining skills to create modern, and user-friendly interfaces. Which enables me to prototype exceptional user experiences in Figma.',
        
  ),
  MyService(
    logoImagePath:  AppAssets.ideaIcon,
    title: 'Mobile Developing',
    description:
        'I have strong knowledge of Flutter, enabling me to transform any design into functional code for both Android and iOS platforms. Additionally, I am skilled in connecting APIs.',
  ),
  MyService(
    logoImagePath: AppAssets.ideaIcon,
    title: 'Windows Apps',
    description:
        'I specialize in responsive web design, creating layouts that adapt to various screen sizes and devices. This expertise extends to developing Windows apps, as dashboards and more.',
  ),
  MyService(
    logoImagePath: AppAssets.aiIcon,
    title: 'Parsers/Bots',
    description:
        'I have strong skill in web scrapping, adept at creating bots and parsers. My skills extend to working with proxies and cookies, and automating browser actions through Puppeteer.',
  ),
];

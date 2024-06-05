// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:yudin_v2/src/utils/app_assets.dart';



class ProjectItem {
  final int categoryIndex;
  final String imagePath;
  final String title;
  final String technologyUsed;
  ProjectItem({
    required this.categoryIndex,
    required this.imagePath,
    required this.title,
    required this.technologyUsed,
  });
}

final projectsListItems = <ProjectItem>[
  //mobile
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 0, imagePath: AppAssets.mobileProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  //windows
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 1, imagePath: AppAssets.windowsProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  //web
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 2, imagePath: AppAssets.webProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  //uiUx
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
  ProjectItem(categoryIndex: 3, imagePath: AppAssets.uiUxProject, title: 'Coming soon...', technologyUsed: 'Coming soon...'),
];

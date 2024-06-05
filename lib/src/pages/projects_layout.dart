import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:yudin_v2/src/data/project_categories.dart';

import 'package:yudin_v2/src/data/project_items.dart';
import 'package:yudin_v2/src/utils/colors.dart';
import 'package:yudin_v2/src/widgets/view_all_button.dart';

class ProjectsGridLayout extends StatelessWidget {
  const ProjectsGridLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const ProjectsGridDesktop(),
      tablet: (_) => const ProjectsGridDesktop(),
      mobile: (_) => const ProjectsGridDesktop(),
    );
  }
}

// ============== DESKTOP =============

class ProjectsGridDesktop extends StatefulWidget {
  const ProjectsGridDesktop({
    super.key,
  });

  @override
  State<ProjectsGridDesktop> createState() => _ProjectsGridDesktopState();
}

class _ProjectsGridDesktopState extends State<ProjectsGridDesktop> {
  int currentCategory = 0;

  bool viewAll = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30,  right: 30, top: 130),
      width: 1144,
      child: Column(
        children: [
          Text('Projects',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 45, color: AppColors.white),
              )),
          GradientText(
            'Some of my Work',
            style: GoogleFonts.inter(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            colors: const [Color(0xFF4FC3F7), Colors.white],
          ),
          const SizedBox(
            height: 40,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              ...List.generate(
                projectCategoriesList.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      currentCategory = index;
                    });
                  },
                  child: ProjectCategoryCard(
                    title: projectCategoriesList[index],
                    color: currentCategory == index ? AppColors.projectCategoryCardFilled : AppColors.scaffoldBackground,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            width: 1144,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              children: [
                ...projectsListItems.where((item) => item.categoryIndex == currentCategory).take(viewAll ? projectsListItems.length : 3).map(
                      (e) => ProjectItem(
                        imagePath: e.imagePath,
                        technologyUsed: e.technologyUsed,
                        title: e.title,
                      ),
                    ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          ViewAllButton(
            title: viewAll ? 'Hide' : 'View All',
            onTap: () {
              setState(() {
                viewAll = !viewAll;
              });
            },
          )
        ],
      ),
    );
  }
}

// // ============== MOBILE =============

// class ProjectsGridMobile extends StatelessWidget {
//   const ProjectsGridMobile({
//     super.key,

//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 500,
//       height: 950,
//       child: GridView.builder(
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 5 / 4, mainAxisSpacing: 0, crossAxisSpacing: 0, crossAxisCount: 1),
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             final currentProjectsItems = projectsListItems.where((project) => currentCategory == project.serviceCategory).toList();

//             return ProjectItem(
//               imagePath: currentProjectsItems[index].imagePath,
//               title: currentProjectsItems[index].title,
//               technologyUsed: currentProjectsItems[index].technologyUsed,
//             );
//           }),
//     );
//   }
// }

// ========= PROJECT CATEGORY CARD =============

class ProjectCategoryCard extends StatelessWidget {
  const ProjectCategoryCard({
    super.key,
    required this.title,
    required this.color,
  });
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15.5),
        child: Text(title,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: AppColors.projectCategoryCardText,
              ),
            )),
      ),
    );
  }
}

// ============= PROJECT ITEM ============
class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.technologyUsed,
  });

  final String imagePath;
  final String title;
  final String technologyUsed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 297,
      width: 354.6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              imagePath,
              width: 354.67,
              height: 180.33,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.projectTitle,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Text(
            technologyUsed,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.projectTechnologyUsed,
            ),
          ),
        ],
      ),
    );
  }
}

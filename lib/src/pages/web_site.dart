import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:yudin_v2/src/data/menu_items.dart';
import 'package:yudin_v2/src/pages/about_me_layout.dart';
import 'package:yudin_v2/src/pages/contact_me_layout.dart';
import 'package:yudin_v2/src/pages/main_section_layout.dart';
import 'package:yudin_v2/src/pages/my_services_layout.dart';
import 'package:yudin_v2/src/pages/projects_layout.dart';
import 'package:yudin_v2/src/pages/social_network_layout.dart';
import 'package:yudin_v2/src/utils/app_assets.dart';
import 'package:yudin_v2/src/utils/constant.dart';
import 'package:yudin_v2/src/utils/globals.dart';
import 'package:yudin_v2/src/widgets/logo_widget.dart';
import 'package:yudin_v2/src/widgets/menu_item_button_widget.dart';
import 'package:yudin_v2/src/widgets/top_bar_contact_me_button_widget.dart';

class WebSite extends StatefulWidget {
  const WebSite({super.key});

  @override
  State<WebSite> createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
  final List pages = [
    const MainSectionLayout(),
    const AboutMeLayout(),
    const MyServicesLayout(),
    const ProjectsGridLayout(),
    ContactFormLayout(itemScrollController: itemScrollController),
    const Divider(),
    const SocialNetworkSectionLayout(),
  ];

  void tapMenuItem(int index) {
    setState(() {
      currentStatePageIndex = index;
    });
    scaffoldKey.currentState!.closeEndDrawer();
  }

  int currentStatePageIndex = 0;



  @override
  Widget build(BuildContext context) {
    //NAVIGATIONS BARS
    return Scaffold(
      endDrawer: !ResponsiveBreakpoints.of(context).isDesktop ? navigationBarMobile() : null,
      key: scaffoldKey,
      appBar: !ResponsiveBreakpoints.of(context).isDesktop
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 66),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: SizedBox(
                  width: kWebsiteDesktopMaxWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LogoWidgetMobile(
                        onTap: () {
                          itemScrollController.scrollTo(
                            index: 0,
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.easeInOutCubic,
                          );
                        },
                      ),
                      IconButton(
                          onPressed: () {
                            scaffoldKey.currentState!.openEndDrawer();
                          },
                          icon: Image.asset(
                            AppAssets.drawerIcon,
                            height: 10,
                            width: 14,
                          ))
                    ],
                  ),
                ),
              ),
            )
          : navigationBarDesktop(),

      //============== SCROLLABLE LIST VIEW  MAIN PAGE=======================
      body: Center(
        child: ScrollablePositionedList.builder(
          itemCount: pages.length,
          itemBuilder: (context, index) {
            return pages[index];
          },
          itemScrollController: itemScrollController,
          scrollOffsetController: scrollOffsetController,
          itemPositionsListener: itemPositionsListener,
          scrollOffsetListener: scrollOffsetListener,
        ),
      ),
    );
  }

//============= NavBar Mobile ==================
  Drawer navigationBarMobile() {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...List.generate(menuItems.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 50),
              child: MenuItemButtonWidget(
                tapButtonFnc: () => tapMenuItem(index),
                currentStatePageindex: currentStatePageIndex,
                itemScrollController: itemScrollController,
                listGenerateIndex: index,
                title: menuItems[index].title,
              ),
            );
          }),
        ],
      ),
    );
  }

//============= NavBar Desktop ==================
  PreferredSize navigationBarDesktop() {
    return PreferredSize(
      preferredSize: const Size(kWebsiteDesktopMaxWidth, 66),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 123,
          right: 123,
          top: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            LogoWidgetMobile(
              onTap: () {
                itemScrollController.scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeInOutCubic,
                );
              },
            ),
            const Flexible(
                child: SizedBox(
              width: 100,
            )),
            const SizedBox(
              width: 63,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(menuItems.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: MenuItemButtonWidget(
                      tapButtonFnc: () => tapMenuItem(index),
                      currentStatePageindex: currentStatePageIndex,
                      itemScrollController: itemScrollController,
                      listGenerateIndex: index,
                      title: menuItems[index].title,
                    ),
                  );
                }),
              ],
            ),
            const Flexible(
                child: SizedBox(
              width: 50,
            )),
            const SizedBox(
              width: 13,
            ),
            TopBarContactMeButtonWidget(
              onTap: () {
                itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeInOutCubic,
                );
              },
            ),
            const Flexible(
                child: SizedBox(
              width: 20,
            )),
            const SizedBox(
              width: 33,
            ),
            IconButton(
                onPressed: () {
                  //TODO: implement light/dark mode switcher
                },
                icon: const Icon(Icons.light_mode)),
          ],
        ),
      ),
    );
  }
}

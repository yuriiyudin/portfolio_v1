import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class MenuItemButtonWidgetDesktop extends StatefulWidget {
  const MenuItemButtonWidgetDesktop({
    super.key,
    required this.title,
    required this.listGenerateIndex,
    required this.itemScrollController,
    required this.currentStatePageindex,
    required this.tapButtonFnc,
  });

  final String title;

  final int listGenerateIndex;
  final int currentStatePageindex;

  final ItemScrollController itemScrollController;

  final VoidCallback tapButtonFnc;

  @override
  State<MenuItemButtonWidgetDesktop> createState() => _MenuItemButtonWidgetDesktopState();
}

class _MenuItemButtonWidgetDesktopState extends State<MenuItemButtonWidgetDesktop> {
  void scrollTo({required int index}) {
    widget.itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 750),
      curve: Curves.easeInOutCubic,
    );
  }



  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) {
        if(widget.currentStatePageindex != widget.listGenerateIndex ) {

        }
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          scrollTo(index: widget.listGenerateIndex);
          widget.tapButtonFnc();
        },
        child: Text(
          widget.title,
          style: TextStyle(
              fontSize: widget.listGenerateIndex == widget.currentStatePageindex ? 20 : 18,
              fontWeight: FontWeight.w600,
              color: widget.listGenerateIndex == widget.currentStatePageindex ? AppColors.menuItemActive : AppColors.menuItemNotActive),
        ),
      ),
    );
  }
}

class MenuItemButtonWidgetMobile extends StatefulWidget {
  const MenuItemButtonWidgetMobile({
    super.key,
    required this.title,
    required this.listGenerateIndex,
    required this.itemScrollController,
    required this.currentStatePageindex,
    required this.tapButtonFnc,
  });

  final String title;

  final int listGenerateIndex;
  final int currentStatePageindex;

  final ItemScrollController itemScrollController;

  final VoidCallback tapButtonFnc;

  @override
  State<MenuItemButtonWidgetMobile> createState() => _MenuItemButtonWidgetMobileState();
}

class _MenuItemButtonWidgetMobileState extends State<MenuItemButtonWidgetMobile> {
  void scrollTo({required int index}) {
    widget.itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 750),
      curve: Curves.easeInOutCubic,
    );
  }

  Color activeColor = AppColors.drawerActiveText;
  Color notActiveColor = AppColors.drawerNotActiveText;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          scrollTo(index: widget.listGenerateIndex);
          widget.tapButtonFnc();
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: widget.listGenerateIndex == widget.currentStatePageindex ? 35 : 33,
                fontWeight: FontWeight.w600,
                letterSpacing: 3,
                color: widget.listGenerateIndex == widget.currentStatePageindex ? AppColors.drawerActiveText : AppColors.drawerNotActiveText),
          ),
        ),
      ),
    );
  }
}

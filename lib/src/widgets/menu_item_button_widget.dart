import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:yudin_v2/src/utils/colors.dart';

class MenuItemButtonWidget extends StatefulWidget {
  const MenuItemButtonWidget({
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
  State<MenuItemButtonWidget> createState() => _MenuItemButtonWidgetState();
}

class _MenuItemButtonWidgetState extends State<MenuItemButtonWidget> {
  void scrollTo({required int index}) {
    widget.itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 750),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        scrollTo(index: widget.listGenerateIndex);
        widget.tapButtonFnc();
      },
      child: Text(
        widget.title,
        style: TextStyle(
            fontSize: widget.listGenerateIndex == widget.currentStatePageindex ? 20 : 18 ,
            fontWeight: FontWeight.w600,
            color: widget.listGenerateIndex == widget.currentStatePageindex ? AppColors.menuItemActive : AppColors.menuItemNotActive),
      ),
    );
  }
}

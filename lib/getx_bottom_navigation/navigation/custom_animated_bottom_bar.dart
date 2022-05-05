import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAnimatedBottomBar extends StatelessWidget {
  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomNaviBarItem> naviBarItem;

  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  const CustomAnimatedBottomBar(
      {Key? key,
      this.selectedIndex = 0,
      this.iconSize = 24,
      this.backgroundColor,
      this.showElevation = true,
      required this.naviBarItem,
      this.animationDuration = const Duration(milliseconds: 270),
      required this.onItemSelected,
      this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
      this.itemCornerRadius = 50,
      this.containerHeight = 56,
      this.curve = Curves.linear})
      : assert(naviBarItem.length >= 2 && naviBarItem.length <= 5),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;
    return Container(
      decoration: BoxDecoration(color: bgColor, boxShadow: [
        if (showElevation) const BoxShadow(color: Colors.black12, blurRadius: 2)
      ]),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: containerHeight,
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          child: Row(
              mainAxisAlignment: mainAxisAlignment,
              children: naviBarItem.map((item) {
                var index = naviBarItem.indexOf(item);
                return GestureDetector(
                  onTap: () => onItemSelected(index),
                  child: _ItemWidget(
                      iconSize: iconSize,
                      isSelected: index == selectedIndex,
                      item: item,
                      backgroundColor: bgColor,
                      itemCornerRadius: itemCornerRadius,
                      animationDuration: animationDuration),
                );
              }).toList()),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomNaviBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget(
      {Key? key,
      required this.iconSize,
      required this.isSelected,
      required this.item,
      required this.backgroundColor,
      required this.itemCornerRadius,
      required this.animationDuration,
      this.curve = Curves.linear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        width: isSelected ? 130 : 50,
        height: double.maxFinite,
        duration: animationDuration,
        curve: curve,
        decoration: BoxDecoration(
            color: isSelected
                ? item.activeColor.withOpacity(0.2)
                : backgroundColor,
            borderRadius: BorderRadius.circular(itemCornerRadius)),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: isSelected ? 130 : 50,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconTheme(
                    data: IconThemeData(
                        size: iconSize,
                        color: isSelected
                            ? item.activeColor.withOpacity(1)
                            : item.inactiveColor == null
                                ? item.activeColor
                                : item.inactiveColor),
                    child: item.icon),
                if (isSelected)
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: DefaultTextStyle.merge(
                        style: GoogleFonts.inter(
                            color: item.activeColor,
                            fontWeight: FontWeight.bold),
                        child: item.title,
                        maxLines: 1,
                        textAlign: item.textAlign),
                  ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNaviBarItem {
  final Widget icon;
  final Widget title;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;

  BottomNaviBarItem(
      {required this.icon,
      required this.title,
      this.activeColor = Colors.blue,
      this.inactiveColor,
      this.textAlign});
}

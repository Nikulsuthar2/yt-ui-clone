import 'package:flutter/material.dart';

class YTChip extends StatelessWidget {
  final Color chipColor;
  final Color chipSelectedColor;
  final double? chipHeight;
  final double? chipWidth;
  final double chipRadius;
  final EdgeInsetsGeometry? chipPadding;
  final Widget chipChild;
  final bool selected;
  const YTChip({
    Key? key,
    this.chipColor = const Color.fromARGB(255, 43, 43, 43),
    this.chipSelectedColor = const Color.fromARGB(255, 255, 255, 255),
    this.chipRadius = 5.0,
    this.chipPadding = const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
    required this.chipChild,
    this.chipHeight,
    this.chipWidth,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(chipRadius),
        child: Container(
          height: chipHeight,
          width: chipWidth,
          color: selected ? chipSelectedColor : chipColor,
          padding: chipPadding,
          child: Center(child: chipChild),
        ),
      ),
    );
  }
}

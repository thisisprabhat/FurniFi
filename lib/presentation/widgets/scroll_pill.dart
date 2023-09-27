import 'package:flutter/material.dart';

class ScrollablePill extends StatelessWidget {
  const ScrollablePill({
    super.key,
    this.width = 200,
    this.backgroundColor,
    this.pillColor,
    required this.lengthOfItems,
    required this.currentIndex,
    this.thickness,
  });
  final double width;
  final Color? backgroundColor;
  final Color? pillColor;
  final double? thickness;
  final int lengthOfItems;
  final int currentIndex;

  double get _widgetWidth => width <= 50 ? 50 + width : width;

  double get _pillWidth => _widgetWidth / 4;

  double get _position {
    final pillMovableWidth = _widgetWidth - _pillWidth;
    final unitPosition = pillMovableWidth / (lengthOfItems - 1);
    final position = (unitPosition) * currentIndex;
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: thickness ?? 10,
          width: _widgetWidth,
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        AnimatedPositioned(
          left: _position,
          duration: const Duration(milliseconds: 500),
          child: Container(
            height: thickness ?? 10,
            width: _pillWidth,
            decoration: BoxDecoration(
              color: pillColor ?? Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        )
      ],
    );
  }
}

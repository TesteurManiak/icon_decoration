import 'package:flutter/material.dart';

class IconBorder {
  const IconBorder({
    this.width = 1.0,
    this.color = Colors.black,
  }) : assert(width >= 0.0);

  /// Border's width
  final double width;

  /// Border's color
  final Color color;
}

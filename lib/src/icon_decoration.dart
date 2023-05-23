import 'package:flutter/material.dart';
import 'package:icon_decoration/src/icon_border.dart';

/// The [IconDecoration] class provides a variety of ways to draw an icon.
///
/// The icon has a [border] and may cast shadows.
///
/// The [border] paints over the icon; the [boxShadow], naturally, paints
/// below it.
class IconDecoration {
  /// Creates a `DecoratedIcon` decoration.
  const IconDecoration({
    this.border,
    this.gradient,
  });

  /// A border to draw above the icon color or [gradient].
  final IconBorder? border;

  /// Apply a gradient to the icon. If this is specified the [Icon.color]
  /// property has no effect.
  final Gradient? gradient;
}

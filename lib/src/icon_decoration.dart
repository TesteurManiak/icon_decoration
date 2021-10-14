import 'package:flutter/material.dart';
import 'package:icon_decoration/src/icon_border.dart';

/// The [IconDecoration] class provides a variety of ways to draw an icon.
///
/// The icon has a [border] and may cast [shadows].
///
/// The [border] paints over the icon; the [boxShadow], naturally, paints
/// below it.
class IconDecoration {
  /// A list of [Shadow]s that will be painted underneath the icon.
  ///
  /// Multiple shadows are supported to replicate lighting from multiple light
  /// sources.
  final List<Shadow>? shadows;
  final IconBorder? border;
  final Gradient? gradient;

  /// Creates a `DecoratedIcon` decoration.
  const IconDecoration({
    this.shadows,
    this.border,
    this.gradient,
  });
}

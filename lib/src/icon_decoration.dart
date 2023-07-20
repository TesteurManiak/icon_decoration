import 'package:flutter/material.dart';
import 'package:icon_decoration/src/icon_border.dart';

/// {@template icon_decoration}
/// Used to specify a decoration to apply to an [Icon] widget.
///
/// The icon has a [border] and may cast shadows.
///
/// The [border] paints over the icon; the [boxShadow], naturally, paints
/// below it.
/// {@endtemplate}
class IconDecoration {
  /// {@macro icon_decoration}
  const IconDecoration({
    this.border,
    this.gradient,
  });

  /// A border to draw above the icon color or [gradient].
  final IconBorder? border;

  /// Apply a gradient to the icon. If this is specified the [Icon.color]
  /// property has no effect.
  ///
  /// **Gradients are supported on Flutter Web only with the [canvaskit renderer](https://docs.flutter.dev/platform-integration/web/renderers)**
  final Gradient? gradient;
}

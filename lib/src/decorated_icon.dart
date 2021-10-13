import 'package:flutter/material.dart';
import 'package:icon_decoration/src/icon_decoration.dart';

/// Reimplementation of the [Icon] widget which adds support for shadows.
class DecoratedIcon extends StatelessWidget {
  final Icon child;
  final IconDecoration? decoration;

  const DecoratedIcon({
    Key? key,
    required this.child,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = child.icon!;
    final textDirection = child.textDirection ?? Directionality.of(context);
    final iconTheme = IconTheme.of(context);
    final iconSize = child.size ?? iconTheme.size;
    final iconOpacity = iconTheme.opacity ?? 1.0;
    Color iconColor = child.color ?? iconTheme.color!;
    if (iconOpacity != 1.0) {
      iconColor = iconColor.withOpacity(iconColor.opacity * iconOpacity);
    }

    Widget iconWidget = RichText(
      overflow: TextOverflow.visible,
      textDirection: textDirection,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          inherit: false,
          color: iconColor,
          fontSize: iconSize,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          shadows: decoration?.shadows,
        ),
      ),
    );

    if (icon.matchTextDirection) {
      switch (textDirection) {
        case TextDirection.rtl:
          iconWidget = Transform(
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            alignment: Alignment.center,
            transformHitTests: false,
            child: iconWidget,
          );
          break;
        case TextDirection.ltr:
          break;
      }
    }

    return Semantics(
      label: child.semanticLabel,
      child: ExcludeSemantics(
        child: SizedBox(
          width: iconSize,
          height: iconSize,
          child: Center(
            child: iconWidget,
          ),
        ),
      ),
    );
  }
}

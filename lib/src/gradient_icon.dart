import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GradientIcon extends StatelessWidget {
  const GradientIcon({
    Key? key,
    required this.icon,
    required this.size,
    required this.gradient,
    required this.textDirection,
    required this.style,
  }) : super(key: key);

  final IconData icon;
  final double size;
  final Gradient gradient;
  final TextDirection textDirection;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final textPainter = TextPainter(
      textDirection: textDirection,
      text: TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: style,
      ),
    )..layout(maxWidth: size, minWidth: size);

    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _GradientIconPainter(
          icon: icon,
          gradient: gradient,
          textPainter: textPainter,
          style: style,
        ),
        size: Size.square(size),
      ),
    );
  }
}

class _GradientIconPainter extends CustomPainter {
  _GradientIconPainter({
    required this.gradient,
    required this.icon,
    required this.style,
    required this.textPainter,
  });
  final Gradient gradient;
  final IconData icon;
  final TextStyle style;
  final TextPainter textPainter;

  @override
  void paint(Canvas canvas, Size size) {
    final textSpanRect =
        Alignment.center.inscribe(textPainter.size, Offset.zero & size);

    if (debugPaintSizeEnabled) {
      debugPaintPadding(canvas, textSpanRect, textSpanRect.deflate(2));
    }

    textPainter
      ..text = TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: style.copyWith(
          foreground: Paint()..shader = gradient.createShader(textSpanRect),
        ),
      )
      ..layout(minWidth: size.width, maxWidth: size.width)
      ..paint(canvas, textSpanRect.topLeft);
  }

  @override
  bool shouldRepaint(_GradientIconPainter oldDelegate) {
    return gradient != oldDelegate.gradient ||
        icon != oldDelegate.icon ||
        style != oldDelegate.style;
  }
}

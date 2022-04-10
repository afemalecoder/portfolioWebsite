import 'package:flutter/material.dart';

class BackgroundCustomPaint extends CustomPainter {
  BackgroundCustomPaint({
    required this.overlayColor,
    required this.filledColor,
    required this.circleColor,
  });
  Color overlayColor;
  Color filledColor;
  Color circleColor;

  @override
  void paint(Canvas canvas, Size size) {
    const double strokeWidth = 6;
    final width = size.width;

    final Path filledCircleDeco = Path();
    final Path strokedDeco = Path();

    strokedDeco.addOval(
      Rect.fromCircle(
        center: Offset(width * 0.95, 0),
        radius: 150,
      ),
    );

    final strokedCirclePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..color = circleColor;

    canvas.drawPath(strokedDeco, strokedCirclePaint);

    filledCircleDeco.addOval(
      Rect.fromCircle(
        center: Offset(width * 0.1, 0),
        radius: 150,
      ),
    );

    final filledCirclePaint = Paint()
      ..color = filledColor
      ..style = PaintingStyle.fill;
    canvas.drawPath(filledCircleDeco, filledCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

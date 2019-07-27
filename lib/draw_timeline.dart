import 'package:flutter/material.dart';

enum LineDirection { horizontally, vertically }

class DrawTimeline extends CustomPainter {
  final LineDirection lineDirection;

  final double strokeWith;
  final Color color;

  final StrokeCap strokeCap;

  Offset startOffset;

  Offset endOffset;

  DrawTimeline({
    this.lineDirection = LineDirection.vertically,
    this.strokeWith = 2.0,
    this.strokeCap = StrokeCap.round,
    this.color = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (this.lineDirection == LineDirection.vertically) {
      startOffset = Offset(5, 0);
      endOffset = Offset(5, size.height);
    } else if (this.lineDirection == LineDirection.horizontally) {
      startOffset = Offset(0, 5);
      endOffset = Offset(size.width, 5);
    }
    canvas.drawLine(
        startOffset,
        endOffset,
        Paint()
          ..color = color
          ..strokeCap = strokeCap
          ..strokeWidth = strokeWith);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

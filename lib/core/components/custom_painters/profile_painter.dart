import 'package:flutter/rendering.dart';

class ProfileIconPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(22.5495, 21.0777);
    path_0.cubicTo(25.5194, 21.0777, 27.9271, 18.674, 27.9271, 15.7088);
    path_0.cubicTo(27.9271, 12.7436, 25.5194, 10.3398, 22.5495, 10.3398);
    path_0.cubicTo(19.5795, 10.3398, 17.1719, 12.7436, 17.1719, 15.7088);
    path_0.cubicTo(17.1719, 18.674, 19.5795, 21.0777, 22.5495, 21.0777);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04500000;
    paint0Stroke.color = const Color(0xff6F6E7C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(13.6593, 35.0591);
    path_1.cubicTo(13.2537, 34.9188, 12.9086, 34.6438, 12.6817, 34.28);
    path_1.cubicTo(12.4548, 33.9163, 12.3599, 33.4858, 12.4127, 33.0605);
    path_1.cubicTo(12.683, 30.5661, 13.867, 28.2594, 15.7371, 26.5834);
    path_1.cubicTo(17.6072, 24.9075, 20.0316, 23.9805, 22.5446, 23.9805);
    path_1.cubicTo(25.0576, 23.9805, 27.482, 24.9075, 29.3521, 26.5834);
    path_1.cubicTo(31.2222, 28.2594, 32.4061, 30.5661, 32.6765, 33.0605);
    path_1.cubicTo(32.7233, 33.4803, 32.6265, 33.9036, 32.4018, 34.2615);
    path_1.cubicTo(32.1772, 34.6194, 31.8378, 34.8909, 31.439, 35.0318);
    path_1.cubicTo(30.156, 35.4679, 27.6082, 35.9403, 22.5491, 35.9403);
    path_1.cubicTo(17.49, 35.9403, 14.9422, 35.4951, 13.6593, 35.0591);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.04090909;
    paint1Stroke.color = const Color(0xff6F6E7C).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

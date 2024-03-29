import 'package:flutter/rendering.dart';

class FireIconPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(11.5333, 29.5);
    path_0.cubicTo(5.2086, 29.5, 0.333328, 24.7565, 0.333328, 18.5636);
    path_0.cubicTo(0.333328, 16.3236, 0.728621, 14.6106, 1.51921, 13.293);
    path_0.cubicTo(2.30979, 12.1071, 2.70508, 11.5801, 3.3639, 10.9213);
    path_0.cubicTo(3.62743, 10.7895, 3.7592, 10.526, 4.02273, 10.2624);
    path_0.lineTo(4.41802, 9.73537);
    path_0.cubicTo(5.07684, 9.07655, 5.2086, 8.94479, 5.86742, 7.75891);
    path_0.cubicTo(6.52624, 6.57303, 7.0533, 3.80599, 7.0533, 1.82952);
    path_0.cubicTo(7.0533, 1.30247, 7.31683, 0.907174, 7.84389, 0.643645);
    path_0.cubicTo(8.23918, 0.380117, 8.76624, 0.511881, 9.16153, 0.77541);
    path_0.lineTo(9.82035, 1.30247);
    path_0.cubicTo(11.2698, 2.35658, 13.1145, 3.93775, 14.5639, 6.17774);
    path_0.cubicTo(15.4862, 7.62715, 16.4086, 9.60361, 16.9356, 11.1848);
    path_0.cubicTo(17.1991, 10.6577, 17.4627, 9.9989, 17.5944, 9.20832);
    path_0.cubicTo(17.7262, 8.68126, 18.1215, 8.1542, 18.6486, 8.02244);
    path_0.cubicTo(19.1756, 7.89068, 19.8344, 8.1542, 20.098, 8.68126);
    path_0.cubicTo(21.0203, 10.2624, 21.1521, 10.526, 21.9427, 12.8977);
    path_0.cubicTo(22.7332, 15.4012, 22.865, 16.9824, 22.865, 18.4318);
    path_0.cubicTo(22.7332, 24.493, 17.7262, 29.5, 11.5333, 29.5);
    path_0.close();
    path_0.moveTo(9.42506, 4.46481);
    path_0.cubicTo(9.16153, 6.17774, 8.76624, 7.89068, 8.10741, 9.07655);
    path_0.cubicTo(7.31683, 10.3942, 7.0533, 10.7895, 6.39448, 11.5801);
    path_0.lineTo(5.99919, 11.9754);
    path_0.cubicTo(5.73566, 12.2389, 5.47213, 12.5024, 5.34037, 12.766);
    path_0.cubicTo(4.81331, 13.4248, 4.41802, 13.8201, 3.7592, 14.7424);
    path_0.cubicTo(3.23214, 15.6648, 2.96861, 16.9824, 2.96861, 18.6953);
    path_0.cubicTo(2.96861, 23.3071, 6.78977, 26.9965, 11.5333, 26.9965);
    path_0.cubicTo(16.2768, 26.9965, 20.098, 23.1753, 20.098, 18.4318);
    path_0.cubicTo(20.098, 17.1142, 20.098, 15.9283, 19.3074, 13.8201);
    path_0.cubicTo(19.1756, 13.4248, 19.0438, 13.1612, 19.0438, 12.8977);
    path_0.cubicTo(18.385, 13.9518, 17.5944, 14.6106, 17.1991, 14.8742);
    path_0.cubicTo(16.8039, 15.1377, 16.2768, 15.2695, 15.7497, 15.0059);
    path_0.cubicTo(15.3544, 14.7424, 14.9592, 14.3471, 14.9592, 13.8201);
    path_0.cubicTo(14.9592, 13.4248, 13.905, 9.86714, 12.4556, 7.62715);
    path_0.cubicTo(11.5333, 6.30951, 10.4792, 5.25539, 9.42506, 4.46481);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff6F6E7C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

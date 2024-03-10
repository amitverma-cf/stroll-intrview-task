import 'package:flutter/rendering.dart';

class ChatIconPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(26.9446, 9.53038);
    path_0.cubicTo(25.0466, 3.20838, 17.9288, -0.152686, 11.145, 1.98132);
    path_0.cubicTo(4.36111, 4.11533, 0.441948, 10.9531, 2.34881, 17.2573);
    path_0.cubicTo(2.66645, 18.3051, 3.14059, 19.2976, 3.75478, 20.2004);
    path_0.cubicTo(3.867, 20.3675, 3.91969, 20.5682, 3.90417, 20.7695);
    path_0.cubicTo(3.84306, 21.4453, 3.63682, 22.0993, 3.29986, 22.686);
    path_0.cubicTo(2.9629, 23.2727, 2.50336, 23.7779, 1.95337, 24.1661);
    path_0.cubicTo(0.863742, 24.913, 1.02191, 25.7133, 2.30487, 25.5621);
    path_0.cubicTo(3.88256, 25.4141, 5.38122, 24.7951, 6.61068, 23.7838);
    path_0.cubicTo(6.71479, 23.6608, 6.85961, 23.5803, 7.01808, 23.5574);
    path_0.cubicTo(7.17655, 23.5345, 7.33784, 23.5707, 7.47184, 23.6593);
    path_0.cubicTo(10.5211, 25.7044, 14.1678, 26.0423, 18.1924, 24.7708);
    path_0.cubicTo(24.9411, 22.6723, 28.8779, 15.8346, 26.9446, 9.53038);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.06206897;
    paint0Stroke.color = const Color(0xff6F6E7C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

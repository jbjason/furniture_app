import 'package:flutter/material.dart';
import 'package:furniture_app/constant/my_color.dart';

class HomeNavbarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.moveTo(0, h * .8);

    const px1 = 0.0, py1 = 0.0;
    final px2 = w * .25, py2 = h * .2;
    final px3 = w * .5, py3 = h * .3;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    path.quadraticBezierTo(w * .7, h * .35, w * .75, 0);
    path.quadraticBezierTo(w * .85, h * 1.4, w * .95, 0);
    path.quadraticBezierTo(w, h * .35, w, h * .5);

    path.lineTo(w, h * .2);
    path.lineTo(w, h);
    path.lineTo(0, h);
    path.close();

    canvas.drawShadow(path, MyColor.brownDark, 10, false);
    final paint = Paint()
      ..color = MyColor.brownDark
      ..strokeCap = StrokeCap.round;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

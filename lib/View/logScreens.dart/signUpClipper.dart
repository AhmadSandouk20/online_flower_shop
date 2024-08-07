import 'package:flutter/material.dart';

class SignUpClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    //starting point
    path.lineTo(size.width, 0);

    var start = Offset(size.width, size.height);

    var end = Offset(0, size.height / 1.5);

    path.quadraticBezierTo(start.dx, start.dy, end.dx, end.dy);

    // path.close();

    // path.moveTo(0, size.height * 0.5);
    // path.lineTo(size.width * 0.2, 0);
    // path.lineTo(size.width * 0.8, 0);
    // path.lineTo(size.width, size.height * 0.5);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

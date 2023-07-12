import 'package:flutter/material.dart';
class MyClipper extends CustomClipper<Path>{
  @override

  Path getClip(Size size) {

    Path path= Path();
    // here we are going opp direction
    // first minus 20 from width
    path.moveTo(20, 0);
    path.lineTo(size.width/2-50, size.width/14);
    path.moveTo(size.width/2,size.width/20,);
    path.lineTo(size.width-20, 0);
    path.arcToPoint(Offset(size.width, 20,),radius: const Radius.circular(20), clockwise: true);
    path.lineTo(size.width, size.height-20);
    path.arcToPoint(Offset(size.width-20,size.height),radius: const Radius.circular(20), clockwise: true);
    path.quadraticBezierTo(size.height-70/2, 160, 20, size.height);
    path.arcToPoint(Offset(0,size.height-20),radius: const Radius.circular(20), clockwise: true);

    path.lineTo(0, 20);
    path.arcToPoint( Offset(20,0,), radius: const Radius.circular(20), clockwise: true);









    path.close();
    return path;
  }
  /// this must be true
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;
// TODO: implement shouldReclip



}
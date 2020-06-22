import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),
          child: Container(
            width: double.infinity,
            height: 300,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = Path();                        //1
    p.lineTo(0, size.height-100);
    p.lineTo(size.width, size.height);      //2
    p.lineTo(size.width, 0);                //3 
    p.close();                         //go back to first point

    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {    
    return true;
  }
}

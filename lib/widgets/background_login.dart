import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';



class BackgroundLogin extends StatelessWidget {

  final Widget child;
  
   
  const BackgroundLogin({
    Key? key, 
    required this.child
    }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children:  [
            _Background(),

            _IconBackground(),

            child,

          ]),
    );
  }
}



class _Background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
      return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: 
            CustomPaint(
            painter: _BackgroundLoginPainter(),
          ),
    );
  }

  
}

class _IconBackground extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      width: double.infinity,
      child: Image(image: AssetImage('assets/logo.png'),)
    );
  }
}

class FondoLogin extends StatelessWidget {

  final Widget child;

  const FondoLogin({super.key, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: 
            CustomPaint(
            painter: _BackgroundLoginPainter(),
          ),
    );
  }
}

class _BackgroundLoginPainter extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    //* Propiedades del painter

    lapiz.color =  pPrimarycolor;
    lapiz.style = PaintingStyle.fill; 
    lapiz.strokeWidth = 10;

    final path = Path();

    path.lineTo( 0, size.height * 0.40 );
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.55, size.width * 0.5, size.height * 0.40 );
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.25, size.width, size.height * 0.40 );
    path.lineTo( size.width, 0 );

    canvas.drawPath(path, lapiz );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
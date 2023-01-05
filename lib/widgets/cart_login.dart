import 'package:flutter/material.dart';

class CardLogin extends StatelessWidget {

  final Widget child;
   
  const CardLogin({
    Key? key, 
    required this.child})
    : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            decoration: _decoracionContenedor(),
            child: child,
        ),
      ),
    );
  }

  BoxDecoration _decoracionContenedor() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: const  [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 20,
        offset: Offset(10, 5)
      )
    ]
    
  );
}

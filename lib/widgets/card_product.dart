//? importaciones de terceros
import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {

  final String imagen;
  final String title;
   
  const CardProductWidget({
    Key? key, 
    required this.imagen, 
    required this.title})
    : super(key: key);
  
 
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const  EdgeInsets.symmetric(horizontal: 5, vertical: 15),
          width: 130,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const  [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 10,
                offset: Offset(0, 5)
              )
            ]
          
          ),
          child: Stack(
            children: [
             ClipRRect (
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(imagen, fit: BoxFit.cover)),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 130,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                  ),
                  child:  FittedBox(
                    fit:  BoxFit.contain,
                    child: Text(title, style: const  TextStyle( fontSize: 20 ),),
                  ),
                ),
              )
            ],
          ),
         );
  }
}
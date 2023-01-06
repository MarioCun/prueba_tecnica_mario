import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {
   
  const CardProductWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return  Container(
          margin: const EdgeInsets.only(top: 15),
          width: size.width * 0.3,
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
          child: Column(
            children: [
              Image.asset('assets/logo.png'),
              Container(
                width: double.infinity,
                height: 35, 
                decoration: const  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  )
                ),
                child: const Center(
                  child:  Text('Producto')),
              )
            ],
          ),
         );
  }
}
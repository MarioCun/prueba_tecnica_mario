import 'package:flutter/material.dart';

import 'package:prueba_tecnica/constants.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';


class HomeScreenBodyWidget extends StatelessWidget {
   
  const HomeScreenBodyWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderBodyWidget(size: size),

         const _SliderHome(),
    
          
          _TargetCenter(size: size),

          const _TextTitle(text: 'categories',),

          const GripViewWidget(),
    
          const _TextTitle(text: 'Trending Today',),

          _TargetFinal(size: size)

        ],
      ),
    );
  }
}

class _SliderHome extends StatelessWidget {
  const _SliderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
     scrollDirection: Axis.horizontal,
       child: Row(
         children: const [
           CardProductWidget(imagen: 'assets/logoverde.png', title: 'E-commerce',),
           CardProductWidget(imagen: 'assets/logoverde.jpg', title: 'E-commerce',),
           CardProductWidget(imagen: 'assets/logoverde.jpg', title: 'E-commerce',),
           CardProductWidget(imagen: 'assets/logoverde.jpg', title: 'E-commerce',),
           CardProductWidget(imagen: 'assets/logoverde.jpg', title: 'E-commerce',),
         ],
       ),
     );
  }
}

class _TargetFinal extends StatelessWidget {
  const _TargetFinal({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
      height: size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: pPrimarycolor
      ),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/ropa-fondo-2.jpg', 
          fit: BoxFit.cover ,),
      )
      ,

    );
  }
}

class _TextTitle extends StatelessWidget {

   final String text;
  
  const _TextTitle({
    super.key, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: double.infinity,
      child:  Padding(
        padding: const   EdgeInsets.all(8.0),
        child: Text(text, style: const TextStyle(fontSize: 25),),
      ));
  }
}

class _TargetCenter extends StatelessWidget {
  const _TargetCenter({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      width: double.infinity,
      height: size.height * 0.13,
      color: pPrimarycolor,
      child: Row (
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Get upto 70 %', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text('off on this Black  Friday', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)
            ],
          ),
          Expanded(child: Container()),
          TextButton(
            style: TextButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              shape: const StadiumBorder() 
            ),
            
            onPressed: () {
              //todo ir a carrito
            }, 
            child:  const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text('Shop Now', style: TextStyle(color: Colors.black, fontSize: 17),),
            ))
        ])
      ,
    );
  }
}
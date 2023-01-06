
import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderBodyWidget extends StatelessWidget {
  
  const HeaderBodyWidget({
    super.key, required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.25 ,
      child: Stack(
        children: [

          Container(
            height: size.height * 0.25 - 25,
            decoration:  BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  pPrimarycolor.withOpacity(1),
                  pPrimarycolor.withOpacity(0.5)
                ]),
              borderRadius: const   BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
              )
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: size.width * 0.92,
              height: size.height * 0.25 ,
              child: Column(
                children: [
                  
                  Row(
                    children: [
                      const Text(' 11:00 AM', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),

                      Expanded(child: Container()),

                      const Icon(Icons.signal_cellular_4_bar, color: Colors.white,),
                      const SizedBox(width: 5),
                      const Icon(Icons.network_wifi, color: Colors.white,),
                      const SizedBox(width: 2),
                      const Icon(Icons.battery_5_bar, color: Colors.white,),
                      const SizedBox(width: 2),
                    ],),

                  const SizedBox(height: 20),

                  Row(
                    children:   [
                      const Text(' HI PEACEDEV!', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w900),),

                      Expanded(child: Container()),

                      const Icon(Icons.notifications, color: Colors.white,),
                      const SizedBox(width: 20),
                    ],),
                  
                  const SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [

                     Icon(Icons.place, color: Colors.white, size: 35,),
                    
                     
                     SizedBox(width: 5),
                     Text('COMSATS', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),),
                     SizedBox(width: 5),
                     Text('university islamabad', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w300),),


                    ],)

                ],
              ),
              
            ),
          ),

         const _SearhButom()

        ],
      ),

    );
  }
}

class _SearhButom extends StatelessWidget {
  const _SearhButom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 60),
        height: 60,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(0, 5),
              blurRadius: 10
            )
          ]
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.search, size: 30),

                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';

class HomeScreenBodyWidget extends StatelessWidget {
   
  const HomeScreenBodyWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return  Column(
      children: [
        SizedBox(
          height: size.height * 0.18,
          child: Stack(
            children: [

              Container(
                height: size.height * 0.18 - 25,
                decoration: const  BoxDecoration(
                  color: pPrimarycolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                  )
                ),
              ),

              Positioned(
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
                        color: Colors.black,
                        offset: Offset(0, 5)

                      )
                    ]
                  ),
                )
              )

            ],
          ),

        )
      ],
    );
  }
}
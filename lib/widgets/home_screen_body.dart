import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';
import 'package:prueba_tecnica/ui/ui.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';


class HomeScreenBodyWidget extends StatelessWidget {
   
  const HomeScreenBodyWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          _HeaderBodyScreen(size: size),
    
         Container(
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
         ),
          
          Container(
            padding: const EdgeInsets.all(30),
            margin: const EdgeInsets.only(top: 15),
            width: double.infinity,
            height: size.height * 0.14,
            color: pPrimarycolor,
            child: Row (
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Get upto 70 %', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    child: Text('Shop Now', style: TextStyle(color: Colors.black, fontSize: 20),),
                  ))
              ])
            ,
          ),

          GripViewWidget()
    
        ],
      ),
    );
  }
}

class _HeaderBodyScreen extends StatelessWidget {
  const _HeaderBodyScreen({
    super.key,
    required this.size,
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
          )

        ],
      ),

    );
  }
}
import 'package:flutter/material.dart';

class CardProductWidget extends StatelessWidget {
   
  const CardProductWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    

    return Container(
        margin: EdgeInsets.only(top: 10,  ) ,
        width: double.infinity,
        height: 180,
        child: Expanded (
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return _Card();;
            },
          ),
        ),
    );
    
  }
}

class _Card extends StatelessWidget {
  const _Card({
    super.key,
  });

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
              Image.asset('assets/logo.png', fit: BoxFit.cover),
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
                  child:  const FittedBox(
                    fit:  BoxFit.contain,
                    child: Text('Producto', style:  TextStyle( fontSize: 20 ),),
                  ),
                ),
              )
            ],
          ),
         );
  }
}
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';

class GripViewWidget extends StatelessWidget {
   
  const GripViewWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Table(
      children:  [
        TableRow(children: [
          _ContainerRow(),
          _ContainerRow(),
          _ContainerRow(),
        ]),
         TableRow(children: [
          _ContainerRow(),
          _ContainerRow(),
          _ContainerRow(),
        ]),
      ],
    );
  }
}

class _ContainerRow extends StatelessWidget {
  
  
  

  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 88,
      height: 105,
      decoration:   BoxDecoration(
        color: pPrimarycolor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset('assets/logo.png')
      
    );
  }
}
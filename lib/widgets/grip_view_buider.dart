import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';

class GripViewWidget extends StatelessWidget {
   
  const GripViewWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Table(
      children: const [
        TableRow(children: [
          _ContainerRow(imagen: 'assets/moda.jpg',),
          _ContainerRow(imagen: 'assets/mujer.jpg',),
          _ContainerRow(imagen: 'assets/hombre.jpg',),
        ]),
         TableRow(children: [
          _ContainerRow(imagen: 'assets/chaqueta.jpg',),
          _ContainerRow(imagen: 'assets/hombre2.jpg',),
          _ContainerRow(imagen: 'assets/moda23.jpg',),
        ]),
      ],
    );
  }
}

class _ContainerRow extends StatelessWidget {
  
  
  final String imagen;

  const _ContainerRow({super.key, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return
   GestureDetector(
    onTap: () => Navigator.pushNamed(context, 'ApiScreen'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: 88,
        height: 105,
        decoration:   BoxDecoration(
          color: pPrimarycolor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            imagen, 
            fit: BoxFit.cover, ),
        )
        
      ),
    );
  }
}
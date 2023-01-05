//? importaciones de terceros
import 'package:flutter/material.dart';

//? importaciones Propias
import 'package:prueba_tecnica/constants.dart';
import 'package:prueba_tecnica/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {

   static String nameroute = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _appBarHome(),
      body: const HomeScreenBodyWidget()
    );
  }

  AppBar _appBarHome() {
    return AppBar(
      backgroundColor: pPrimarycolor,
      elevation: 0,
    );
  }
}
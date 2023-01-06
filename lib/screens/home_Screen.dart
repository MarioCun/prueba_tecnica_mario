//? importaciones de terceros
import 'package:flutter/material.dart';

//? importaciones Propias
import 'package:prueba_tecnica/widgets/widgets.dart';
import 'componets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {

   static String nameroute = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  HomeScreenBodyWidget(),
      bottomNavigationBar: BotomNavigatorWidget(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';

class BotomNavigatorWidget extends StatelessWidget {
   
  const BotomNavigatorWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      selectedItemColor: Colors.white,
      currentIndex: 0,
      iconSize: 40,
      items: const [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.home_filled),
          backgroundColor: pPrimarycolor,
          ),
        BottomNavigationBarItem(
          label: 'carrito',
          icon: Icon(Icons.shopping_cart),
          backgroundColor: pPrimarycolor,
          ),
        BottomNavigationBarItem(
          label: 'favoritos',
          icon: Icon(Icons.favorite)),
        BottomNavigationBarItem(
          label: 'menu',
          icon: Icon(Icons.menu))
    ]);

  }
}
//? importaciones de terceros
import 'package:flutter/material.dart';

//? Importaciones Propias 
import 'package:prueba_tecnica/screens/screens.dart';

void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Peacedev',
      initialRoute: HomeScreen.nameroute,
      routes: {
       HomeScreen.nameroute : (context) => const HomeScreen(),
       ApiScreen.nameroute : (context) =>  ApiScreen(),
       LoginScreen.nameroute : (context) => const LoginScreen(),
      },
    );
  }
}
 //? importaciones terceros
 import 'package:flutter/material.dart';
import 'package:prueba_tecnica/constants.dart';

 class InputDecorations {

    static InputDecoration authInputDecoration({
      IconData? icon,
       required String labelText,
       required String hintText,
       TextInputType? keyboardType
    }){
      return InputDecoration(
              hintText: hintText ,
              labelText: labelText,
              labelStyle: const TextStyle(color: Colors.black),
              icon:  icon != null  ? Icon(icon, size: 35, color: pPrimarycolor) : null,
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder:  const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2 ))) ;
    }

 }
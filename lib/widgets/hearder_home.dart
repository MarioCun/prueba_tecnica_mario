
import 'package:flutter/material.dart';

import '../constants.dart';

class HeaderBodyWidget extends StatelessWidget {
  
  const HeaderBodyWidget({
    super.key, required this.size,
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
            child: Stack(
              children: [
                Container(
                  
                )
              ]),
          ),

         const _SearhButom()

        ],
      ),

    );
  }
}

class _SearhButom extends StatelessWidget {
  const _SearhButom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}
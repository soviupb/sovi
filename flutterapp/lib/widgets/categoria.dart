import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/widgets/Estrellas.dart';
import 'package:flutterapp/widgets/UniversalButton.dart';
import '../utils/custom_colors.dart';

Container categoria(String nom_cat, String imagen, VoidCallback function,
    double Height, double Width) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.symmetric(horizontal: 10),
    width: 500,
    height: 175,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imagen), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Spacer(
          flex: 1,
        ),
        Row(
          children: [
            SizedBox(
              width: 125,
            ),
            Text(
              nom_cat,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 40,
                shadows: <Shadow>[
                  Shadow(
                    //offset: Offset(0, 10.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    //offset: Offset(10.0, 10.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Spacer(),
            Column(
              children: [
                SizedBox(height: 10),
                UniversalButton(
                    function,
                    Colors.black,
                    "Ver producto",
                    Colors.white,
                    20,
                    Colors.transparent,
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    45,
                    225),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

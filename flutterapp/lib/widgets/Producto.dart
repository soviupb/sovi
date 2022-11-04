import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/widgets/Estrellas.dart';
import 'package:flutterapp/widgets/UniversalButton.dart';
import '../utils/custom_colors.dart';

Container producto(String nom_producto, String imagen, double precio,
    double estrellas, VoidCallback function, double Height, double Width) {
  //vendedor jmario
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(blurRadius: 5.0, offset: Offset(1, 4), color: Colors.grey)
        ]),
    child: Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Spacer(),
            Column(children: [
              Image(
                image: AssetImage(imagen),
                width: Width * 0.4,
                height: Height * 0.2,
              ),
            ]),
            Spacer(),
            Column(
              children: [
                Text(
                  nom_producto,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  ("Precio: " + precio.toString()),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: CustomColors.SoviAmarillo,
                    ),
                    Text(
                      estrellas.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                UniversalButton(
                    function,
                    CustomColors.SoviMagenta,
                    "Ver producto",
                    Colors.white,
                    20,
                    Colors.transparent,
                    Icon(Icons.shopping_cart),
                    35,
                    145),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ],
    ),
  );
  Container(
      child: Column(
    children: [
      SizedBox(height: 20),
    ],
  ));
}

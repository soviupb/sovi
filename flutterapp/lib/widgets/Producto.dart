import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import '../utils/custom_colors.dart';

Container producto(
  String nom_producto,
  String imagen,
  String precio,
  double estrellas,
) {
  //vendedor jmario
  return Container(
    decoration: BoxDecoration(
        color: CustomColors.SoviGris,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(0, 5),
            color: Colors.transparent,
          )
        ]),
    child: Column(
      children: [
        Image(
          image: AssetImage(imagen),
          height: 200,
          width: 300,
        ),
        //Image(image: AssetImage(imagen)),
        Text(
          nom_producto,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 5),
        Text(
          ("Precio: " + precio),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Text(
          ("Calificación " + estrellas.toString()),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            fontFamily: 'Alumni Sans Pinstripe',
          ),
        ),
        SizedBox(
            height:
                20), // VoidCallback function, Color bgColor, String text, Color shadowColor
        //LargeButton(VoidCallback function, Color bgColor, String text, Color bgColorT, Color shadowColor, Icon C, double Height, double Width)

        SizedBox(height: 8),
        /*Text(
          ("________________________________________"),
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
        ),*/
        Row(children: <Widget>[
          Expanded(child: Divider()),
          Text(" PPP "),
          Expanded(child: Divider()),
        ]),
        SizedBox(height: 25),
      ],
    ),
  );
}

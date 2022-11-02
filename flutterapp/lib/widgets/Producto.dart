import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/widgets/UniversalButton.dart';
import '../utils/custom_colors.dart';

Container producto(
    String nom_producto,
    //String imagen,
    double precio,
    double estrellas,
    VoidCallback function) {
  //vendedor jmario
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
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
              Spacer(),
              Column(children: [
                const Image(
                  image: AssetImage("assets/papas.jpg"),
                  width: 90,
                  height: 90,
                ),
              ]),
              Spacer(),
              Column(
                children: [
                  Text(
                    nom_producto,
                    style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    ("Precio: " + precio.toString()),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Spacer()
            ]),
        SizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Spacer(flex: 2),
            Icon(
              Icons.star,
              color: CustomColors.SoviAmarillo,
            ),
            Text(
              estrellas.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                //color: bgColorT,
                //fontSize: FontSize,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
        //SizedBox(
        //    height:
        //        20),

        SizedBox(height: 10),
        UniversalButton(
            function,
            CustomColors.SoviMagenta,
            "Ver producto",
            Colors.white,
            15,
            Colors.transparent,
            Icon(Icons.shopping_cart),
            25,
            130),
        SizedBox(height: 10),
        /*Text(
          ("________________________________________"),
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: 14,
          ),
        ),*/
      ],
    ),
  );
}

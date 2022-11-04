import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carrusel_feed extends StatelessWidget {
  String rutaimagen = "assets/jose.jpg";
  Carrusel_feed(this.rutaimagen);
  @override
  Widget build(BuildContext context) {
    final carta = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(rutaimagen)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
    return carta;
  }
}

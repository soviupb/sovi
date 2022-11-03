import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/widgets/UniversalButton.dart';
import '../utils/custom_colors.dart';

Container Estrellas() {
  return Container(
    child: Column(children: [
      Column(
        children: [
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
                3.5.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ],
      ),
      //Spacer()
    ]),
  );
}

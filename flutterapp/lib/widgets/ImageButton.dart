import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';

import '../utils/custom_colors.dart';

GestureDetector ImageButton(
    VoidCallback function,
    Image jpg,
    Color bgColor,
    String text,
    Color bgColorT,
    double FontSize,
    Color shadowColor,
    Icon C,
    double Height,
    double Width) {
  return GestureDetector(
    onTap: function,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: Width,
      height: Height,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              offset: Offset(0, 5),
              color: shadowColor,
            )
          ]),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(), Column(),
            const Spacer(),
            C, //C es el icono que se pase como parametro
            const Spacer(flex: 2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: bgColorT,
                fontSize: FontSize,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    ),
  );
}

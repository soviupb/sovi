import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';

import '../utils/custom_colors.dart';

GestureDetector SmallButton(VoidCallback function, Color bgColor, String text,
    Color bgColorT, Color shadowColor) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(blurRadius: 5.0, offset: Offset(0, 5), color: shadowColor)
          ]),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}

GestureDetector XtrasmallButton(
    VoidCallback function, Color bgColor, String text, Color shadowColor) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(blurRadius: 5.0, offset: Offset(0, 5), color: shadowColor)
          ]),
      child: Center(child: Text(text)),
    ),
  );
}

Container ButtonAndImage(VoidCallback function, double Width, double Height,
    Color bgColor, String text, String image) {
  return Container(
    width: Width,
    height: Height,
    decoration: BoxDecoration(
      color: bgColor,
      //borderRadius: BorderRadius.circular(10),
    ),
    child: Column(),
  );
}

Text TitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
  );
}

Text SubtitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
    ),
    textAlign: TextAlign.center,
  );
}

Text RegularText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w200,
    ),
    textAlign: TextAlign.center,
  );
}

import 'package:flutter/material.dart';

GestureDetector LargeButton(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}

GestureDetector SmallButton(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: bgColorT),
      )),
    ),
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

GestureDetector LargeButtonDropShadow(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0
          )
        ]
      ),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}

GestureDetector SmallButtonDropButton(
    VoidCallback function, Color bgColor, String text, Color bgColorT) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 90,
      height: 20,
      decoration: BoxDecoration(
        color:Colors.white,
        borderRadius: BorderRadius.circular(5),
       
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(0,5),
          )
        ]
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: bgColorT),
      )),
    ),
  );
}
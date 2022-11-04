import 'package:flutter/material.dart';

class Degradado_feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFB3323A),
          Color(0xFFC8372A),
          Color(0xFFD23A22),
        ], stops: [
          0.0,
          0.6
        ], tileMode: TileMode.clamp),
      ),
    );
  }
}

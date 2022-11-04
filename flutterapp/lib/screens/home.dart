import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';

import '../widgets/carrusel_list.dart';
import '../widgets/description.dart';
import '../widgets/review_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Description(),
                reviewlist(),
              ],
            ),
            Container(
              height: 250,
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(colors: [
                Color.fromARGB(255, 163, 36, 70),
                Color.fromARGB(255, 255, 0, 0)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: Text(
                'Populares',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment(-0.9, -0.6),
            ),
            Carrusel_list()
          ],
        ),
      ),
  }

}

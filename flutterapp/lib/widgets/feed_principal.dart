import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class feed_principal extends StatelessWidget {
  const feed_principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Gradiente(),
        Positioned(
            bottom: 0.0, //lo coloca al fondo de la pantalla
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 550,
            ))
      ],
    );
  }
}

//gradiente back
class Gradiente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [
      Color.fromARGB(255, 163, 36, 70),
      Color.fromARGB(255, 255, 0, 0)
    ], begin: Alignment.topLeft, end: Alignment.bottomRight)));
  }
}

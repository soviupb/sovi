import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/review_list.dart';

class Description extends StatelessWidget {
  String descripcion =
      "SOVI es una herramienta diseñada para facilitar el comercio al interior de las universidades, siendo una necesidad para sus estudiantes y comunidad.\nDesarrollada por estudiantes de la Universidad Pontificia Bolivariana de Medellin.\n todos los derechos reservados";

  @override
  Widget build(BuildContext context) {
    final star = Container(
        margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0,
        ),
        child: Icon(
          Icons.star,
          color: Color(0xFFf2c611),
        ));
    final titulo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 323.0,
            left: 26.0,
            right: 20.0,
          ),
          child: Text(
            "Descubre sovi: ",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );
    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 26.0,
        right: 20.0,
      ),
      child: new Text(
        descripcion,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: Color.fromARGB(255, 58, 58, 58),
        ),
      ),
    );
    return Column(
      children: [
        titulo,
        description,
        reviewlist(),
      ],
    );
  }
}

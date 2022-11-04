import 'package:flutter/cupertino.dart';

class Review extends StatelessWidget {
  String rutaImage = "assets/jose.jpg";
  String nombre = "Valeria Padilla";
  String comentario = "Me encanto mi barquillo, muy bueno";

  Review(this.rutaImage, this.nombre, this.comentario);
  @override
  Widget build(BuildContext context) {
    final nombreusuario = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        nombre,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0),
      ),
    );
    final usuarioComen = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comentario,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 15.0),
      ),
    );
    final foto = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(rutaImage),
        ),
      ),
    );

    final usuariodetalles = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[nombreusuario, usuarioComen],
    );

    return Row(
      children: <Widget>[
        foto,
        usuariodetalles,
      ],
    );
  }
}

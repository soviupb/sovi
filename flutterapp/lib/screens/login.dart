import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/UniversalButtonNoIcon.dart';
import 'package:flutterapp/widgets/Widgets.dart';

import '../widgets/UniversalButton.dart';
import 'Inicio.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(15, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            UniversalButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const InicioPage();
                  },
                ),
              );
            }, Colors.white, "", Colors.white, 10, Colors.white,
                Icon(Icons.arrow_back), 50, 50),
            Spacer(
              flex: 3,
            ),
            /*SmallButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const InicioPage();
                  },
                ),
              );
            }, CustomColors.SoviMagenta, "<-", Colors.black,
                CustomColors.SoviMagenta),*/

            Text(
              "Iniciar Sesión",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Correo",
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                ),
              ),
            ),
            Spacer(),
            UniversalButtonNoIcon(
                () {},
                CustomColors.SoviMagenta,
                "Iniciar sesión",
                Colors.white,
                15,
                CustomColors.SoviGris,
                50,
                MediaQuery.of(context).size.width * 0.8),
            Spacer(
              flex: 1,
            ),
            Row(
              children: [
                Spacer(
                  flex: 3,
                ),
                Icon(
                  Icons.facebook,
                  size: 60,
                  color: Colors.blue,
                ),
                Spacer(
                  flex: 1,
                ),
                Image(
                  image: AssetImage("assets/google.png"),
                  height: 50,
                ),
                Spacer(
                  flex: 3,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Crear Cuenta",
              style: TextStyle(
                  color: CustomColors.SoviAzulMarino,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 30,
            ),
            Text("¿Olvidaste tu contraseña?",
                style: TextStyle(
                    color: CustomColors.SoviAzulMarino, fontSize: 20)),
            Spacer(flex: 2),
          ],
        ),
      ),
    ));
  }
}

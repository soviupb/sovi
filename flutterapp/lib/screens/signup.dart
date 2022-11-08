import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/seller.dart';
import 'package:flutterapp/utils/auth.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/utils/database.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/UniversalButtonNoIcon.dart';
import 'package:flutterapp/widgets/Widgets.dart';

import '../widgets/UniversalButton.dart';
import 'Inicio.dart';

class SignupPage extends StatelessWidget {
   SignupPage({Key? key}) : super(key: key);

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(15, 255, 255, 255),
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10,),
                UniversalButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const InicioPage();
                      },
                    ),
                  );
                }, Colors.white, "", Colors.white, 50, Colors.white,
                    Icon(Icons.arrow_back, size: 40,), 50, 50),
              ],
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Registrase",
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
                controller: _controllerEmail,
                decoration: InputDecoration(
                  hintText: "Correo",
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                controller: _controllerPass,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Contraseña",
                ),
              ),
            ),
            Spacer(),
            UniversalButtonNoIcon(() {
              CustomAuth.register(email:_controllerEmail.text,pass:_controllerPass.text);
            },
                CustomColors.SoviMagenta,
                "Registrase",
                Colors.white,
                15,
                CustomColors.SoviGris,
                50,
                MediaQuery.of(context).size.width * 0.8),
            Spacer(
              flex: 1,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
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
            SizedBox(
              height: 30,
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    ));
  }
}

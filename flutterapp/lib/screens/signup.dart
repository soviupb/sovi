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
  final TextEditingController _controllerUser = TextEditingController();

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
                SizedBox(
                  width: 10,
                  height: 100,
                ),
                UniversalButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const InicioPage();
                      },
                    ),
                  );
                },
                    Colors.white,
                    "",
                    Colors.white,
                    50,
                    Colors.white,
                    Icon(
                      Icons.arrow_back,
                      size: 40,
                    ),
                    50,
                    50),
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
            Row(
              children: [
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 10,
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                controller: _controllerUser,
                decoration: InputDecoration(
                  hintText: "Nombre de usuario",
                ),
              ),
            ),
            Spacer(flex: 5,),
            UniversalButtonNoIcon(() {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("Bienvenido a SOVI"),
                        content: Text("Bienvenido: " + _controllerUser.text),
                        actions: [
                          UniversalButtonNoIcon(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SellerPage(_controllerUser.text);
                                },
                              ),
                            );
                          }, Colors.transparent, "OK", Colors.black, 15,
                              Colors.transparent, 50, 50)
                        ],
                      ));
              CustomAuth.register(
                  email: _controllerEmail.text, pass: _controllerPass.text, name: _controllerUser.text);
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

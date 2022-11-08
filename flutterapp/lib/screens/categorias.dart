import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/login2FIre.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/categoria.dart';
import 'package:flutterapp/widgets/Widgets.dart';
import '../widgets/UniversalButton.dart';
import 'login.dart';
import 'productos.dart';

class CatPage extends StatefulWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  State<CatPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<CatPage> {
  bool x = false;
  bool y = false;
  double screenheight = 0.0;
  double screenWIdth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
          child: Container(
        width: screenWIdth,
        height: screenheight,
        decoration: const BoxDecoration(
          //color: Colors.amber,
          color: Colors.white,
          //borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            /*categoria("Barquillos", "assets/barquillos.jpg", () {
            //Aqui irá nuestra función de Sign In
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  //Aca debe return menu
                  return InicioPage(); //MenuMobile();
                },
              ),
            );
          }, screenheight, screenWIdth),*/

            UniversalButton(() {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return InicioPage(); //MenuMobile();
                  },
                ),
              );
            },
                Colors.white,
                "Cliente",
                Colors.black,
                20,
                CustomColors.SoviMagenta,
                Icon(Icons.person, size: screenheight * 0.07),
                screenheight * 0.08,
                screenWIdth * 0.8),
            categoria("Barquillos", "assets/barquillos.jpg", () {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return InicioPage(); //MenuMobile();
                  },
                ),
              );
            }, 10, 10),
            SizedBox(height: 20),
            categoria("Papas", "assets/papas.jpg", () {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return InicioPage(); //MenuMobile();
                  },
                ),
              );
            }, 10, 10),
            SizedBox(height: 20),
            categoria("Papitas", "assets/papitas.jpg", () {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return InicioPage(); //MenuMobile();
                  },
                ),
              );
            }, 10, 10),
            SizedBox(height: 20),
            categoria("Café", "assets/cafe.jpg", () {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return InicioPage(); //MenuMobile();
                  },
                ),
              );
            }, 10, 10),
            SizedBox(height: 20),
          ]),
        ),
      )),
    );
  }
}

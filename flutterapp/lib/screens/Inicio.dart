import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/WellcomePage.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/login2FIre.dart';
import 'package:flutterapp/screens/categorias.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/Widgets.dart';
import 'package:flutterapp/widgets/producto_vendedor.dart';

import '../widgets/UniversalButton.dart';
import 'login.dart';
import 'productos.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
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
        child: Column(
          children: [
            const Spacer(flex: 6),
            //SearchBarWidget(),
            const Image(image: AssetImage("assets/logo.png")),
            SizedBox(
              height: 20,
            ),
            SubtitleText("No esperes más, dale gusto a tu panzita"),
            const Spacer(flex: 10),

            //subTitleText("Ingresa tu usuario"),
            SizedBox(height: 10),
            UniversalButton(() {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return WelcomePage(); //MenuMobile();
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
            Spacer(flex: 2),
            UniversalButton(() {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return LoginPage(); //MenuMobile();
                  },
                ),
              );
            },
                Colors.white,
                "Vendedor",
                Colors.black,
                20,
                CustomColors.SoviMagenta,
                Icon(Icons.storefront, size: screenheight * 0.07),
                screenheight * 0.08,
                screenWIdth * 0.8),
            const Spacer(flex: 5),
            SubtitleText("Sovi™, todos los derechos reservados"),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ));
  }
}

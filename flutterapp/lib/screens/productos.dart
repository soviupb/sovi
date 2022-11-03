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

class ProdPage extends StatelessWidget {
  const ProdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = 0.0;
    double screenWIdth = 0.0;
    screenheight = MediaQuery.of(context).size.height;
    screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color.fromARGB(15, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Buscar",
                ),
              ),
            ),
            SizedBox(height: 20),
            producto("Barquillos", "assets/papas.jpg", 10000, 3.5, () {
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
            }, screenheight, screenWIdth),
            SizedBox(height: 20),
            producto("Papas", "assets/papas.jpg", 10000, 3.5, () {
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
            }, screenheight, screenWIdth),
            SizedBox(height: 20),
            producto("Papitas", "assets/papas.jpg", 10000, 3.5, () {
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
            }, screenheight, screenWIdth),
            SizedBox(height: 20),
            producto("Dulces", "assets/papas.jpg", 10000, 3.5, () {
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
            }, screenheight, screenWIdth),
            SizedBox(height: 20),
            producto("Café", "assets/papas.jpg", 10000, 3.5, () {
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
            }, screenheight, screenWIdth),
            SizedBox(height: 20),
          ],
        ),
      ),
    )));
  }
}

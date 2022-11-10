import 'package:flutter/material.dart';
import 'package:flutterapp/screens/BuquedaSeller.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/screens/categorias.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/productos.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
//Documentation: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html

class ProdPage extends StatefulWidget {
  const ProdPage({super.key});

  @override
  State<ProdPage> createState() => _ProdPageState();
}

class _ProdPageState extends State<ProdPage> {
  int _selectedIndex = 0;
  double screenheight = 0.0;
  double screenWIdth = 0.0;

//Creo que este metodo ya es innecesario

  @override
  Widget build(BuildContext context) {
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
              producto("Barquillos", "assets/barquillos.jpg", 2500, 5, () {
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
              producto("Papas", "assets/papas.jpg", 6000, 4.5, () {
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
              producto("Papitas", "assets/papitas.jpg", 2000, 4.3, () {
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
              producto("Dulces", "assets/dulces.jpg", 1000, 4.5, () {
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
              producto("Café", "assets/cafe.jpg", 10000, 3.5, () {
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
      )),
    );
  }
}

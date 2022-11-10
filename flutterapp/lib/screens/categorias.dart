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
  int _selectedIndex = 0;
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
            Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 85,
                ),
                UniversalButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return InicioPage();
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
                    10,
                    50),
              ],
            ),
            categoria("Barquillos", "assets/barquillos.jpg", () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return InicioPage();
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
            categoria("Dulces", "assets/dulces.jpg", () {
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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: CustomColors.SoviMagenta,
        ),
        child: BottomNavigationBar(
          // fixedColor: CustomColors.SoviMagenta,
          items: <BottomNavigationBarItem>[
            //quite el const de aca para poder usar
            //  screenheightt, pues este no es constante
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: screenheight * 0.07),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: screenheight * 0.07),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu, size: screenheight * 0.07),
              label: '',
            ),
          ],
          currentIndex: 2,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            switch (index) {
              case 0:
                // only scroll to top when current index is selected.
                //Nada pues estamos en el case 0
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //Aca debe return menu
                      return HomePage(); //MenuMobile();
                    },
                  ),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //Aca debe return menu
                      return ProdPage(); //MenuMobile();
                    },
                  ),
                );

                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      //Aca debe return menu
                      return CatPage(); //MenuMobile();
                    },
                  ),
                );

                break;
            }
            setState(
              () {
                _selectedIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/screens/productos.dart';
import 'package:flutterapp/screens/categorias.dart';
import 'package:flutterapp/screens/inicio.dart';
import '../utils/custom_colors.dart';
import '../widgets/UniversalButton.dart';
import '../widgets/carrusel_list.dart';
import '../widgets/description.dart';
import '../widgets/review_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: (int index) {
            switch (index) {
              case 0:
                // only scroll to top when current index is selected.
                //Nada pues estamos en el case 0
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
                //BusquedaSellerPage
                //showModal(context);
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
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Description(),
              reviewlist(),
            ],
          ),
          Container(
            height: 250,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [
              Color.fromARGB(255, 163, 36, 70),
              Color.fromARGB(255, 255, 0, 0)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Row(
              children: [
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
                    Colors.transparent,
                    "",
                    Colors.white,
                    50,
                    Colors.transparent,
                    Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Colors.white,
                    ),
                    50,
                    50),
                Text(
                  'Populares',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            alignment: Alignment(-0.9, -0.6),
          ),
          Carrusel_list()
        ],
      ),
    );
  }
}

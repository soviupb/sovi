import 'package:flutter/material.dart';
import 'package:flutterapp/screens/BuquedaSeller.dart';
import 'package:flutterapp/screens/Inicio.dart';
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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      //style: optionStyle,
    ),
    Text(
      'Index 1: Busqueda',
      //style: optionStyle,
    ),
    Text(
      'Index 2: Vista Hamburguer',
      //style: optionStyle,
    ),
  ];

//Creo que este metodo ya es innecesario
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                producto("Barquillos", "assets/barquillos.jpg", 10000, 3.5, () {
                  //Aqui irá nuestra función de Sign In
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return ProdPage(); //MenuMobile();
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
                producto("Dulces", "assets/dulces.jpg", 10000, 3.5, () {
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
                        return BusquedaSellerPage(); //MenuMobile();
                      },
                    ),
                  );
                  //BusquedaSellerPage
                  //showModal(context);
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return BusquedaSellerPage(); //MenuMobile();
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
        ));
  }
}

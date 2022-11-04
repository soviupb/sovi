import 'package:flutter/material.dart';
import 'package:flutterapp/screens/productos.dart';
import 'package:flutterapp/utils/custom_colors.dart';
//Documentation: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html

class BusquedaSellerPage extends StatefulWidget {
  const BusquedaSellerPage({super.key});

  @override
  State<BusquedaSellerPage> createState() => _BusquedaSellerPageState();
}

class _BusquedaSellerPageState extends State<BusquedaSellerPage> {
  int _selectedIndex = 0;
  double screenheight = 0.0;
  double screenWIdth = 0.0;
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
            child: Column(
          children: [Text('R')],
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
            currentIndex: 1,
            selectedItemColor: Colors.white,
            onTap: (int index) {
              switch (index) {
                case 0:
                  // only scroll to top when current index is selected.
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
                case 1:
                  //showModal(context);
                  //Nada pues estamos en case 1
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return BusquedaSellerPage(); //Aqui iria la vista de valeria();
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

import 'package:flutter/material.dart';
import 'package:flutterapp/screens/login.dart';
import 'package:flutterapp/utils/custom_colors.dart';
//Documentation: https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html

//Aun no funcional
class ProtoNavPage extends StatefulWidget {
  const ProtoNavPage({super.key});

  @override
  State<ProtoNavPage> createState() => _ProtoNavPageState();
}

class _ProtoNavPageState extends State<ProtoNavPage> {
  int _selectedIndex = 0;
  double screenheight = 0.0;
  double screenWIdth = 0.0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Navigator> _widgetOptions = <Navigator>[
    //Tratar de hacer esto un widget universal
  ];

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
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
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
            onTap: _onItemTapped,
          ),
        ));
  }
}

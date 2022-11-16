import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/categorias.dart';
import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/login2FIre.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/UniversalButton.dart';
import 'package:flutterapp/widgets/categoria.dart';
import 'package:flutterapp/widgets/Widgets.dart';

class FriePage extends StatefulWidget {
  const FriePage({Key? key}) : super(key: key);

  @override
  State<FriePage> createState() => _InicioPageState();
}

class _InicioPageState extends State<FriePage> {
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
            //Spacer(),
            Row(
              children: [
                Spacer(flex: 2),
                SizedBox(
                  width: 10,
                  height: 85,
                ),
                UniversalButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CatPage();
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
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: GridB(),
            ),
          ]),
        ),
      )),
    );
  }
}

class GridB extends StatefulWidget {
  const GridB({Key? key}) : super(key: key);

  @override
  State<GridB> createState() => _GridBState();
}

class _GridBState extends State<GridB> {
  final List<Map<String, dynamic>> gridMap = [
    //cabe aclarar que no tenemos licensias de las imagenes mostradas
    //tambien se deberia añadir la imagen de perfil del vendedor
    {
      "title": "Papas chepe",
      "price": "\$3500",
      "images":
          "https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Fries-Small-Medium.jpg",
    },
    {
      "title": "Papas Capira",
      "price": "\$3500",
      "images":
          "https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Fries-Small-Medium.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    bool active = false;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 310,
      ),
      itemCount: gridMap.length,
      itemBuilder: (_, index) {
        if (index > 5) {
          active = true;
        }
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.amberAccent.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.network(
                  "${gridMap.elementAt(index)['images']}",
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${gridMap.elementAt(index)['title']}",
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "${gridMap.elementAt(index)['price']}",
                      style: Theme.of(context).textTheme.subtitle2!.merge(
                            TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade500,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.app_fill,
                            //active
                            //? //La idea es usar algo de este estilo para poner en color rojo inactivo
                            color: Colors.green,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.heart,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.cart,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

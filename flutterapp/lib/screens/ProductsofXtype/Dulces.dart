import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/WellcomePage.dart';
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

class DonasPage extends StatefulWidget {
  const DonasPage({Key? key}) : super(key: key);

  @override
  State<DonasPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<DonasPage> {
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
                        return WelcomePage();
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
      "title": "Donas Maria antonia",
      "price": "\$2000",
      "images":
          "https://dam.cocinafacil.com.mx/wp-content/uploads/2021/06/donas-decoradas-1170x655.jpg",
    },
    {
      "title": "Donuts chepe",
      "price": "\$3500",
      "images":
          "https://t1.rg.ltmcdn.com/es/posts/8/3/0/masa_para_donas_51038_600.webp",
    },
    {
      "title": "Caja Standart donuts",
      "price": "\$15000",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO30evAXDEu3u51v1gluZjYedU1-bZU9eNhw&usqp=CAU",
    },
    {
      "title": "Caja Dunkin Donuts",
      "price": "\$22000",
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8eWRwYuRfsTOLLi8phV3N3jaE3uGFO9JOJSV_bocp0JkHqJpJa65yafIT69juj1mhX0g&usqp=CAU",
    },
    {
      "title": "Roscones Milos",
      "price": "\$2300",
      "images":
          "https://static.compreloadomicilio.com/hummpan/products/057/60859359af0bd662895123.webp",
    },
    {
      "title": "Dulce de leche",
      "price": "\$2700",
      "images":
          "https://static.compreloadomicilio.com/hummpan/products/057/60859359af0bd662895123.webp",
    },
    {
      "title": "V&V  Dedos de chocolare.",
      "price": "\$5500",
      "images":
          "https://static.compreloadomicilio.com/hummpan/products/057/60859359af0bd662895123.webp",
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

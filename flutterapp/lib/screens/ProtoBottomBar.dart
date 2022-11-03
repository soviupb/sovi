import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/Widgets.dart';

import '../widgets/UniversalButton.dart';
import 'login.dart';
import 'productos.dart';

class ProtoBottomPage extends StatefulWidget {
  const ProtoBottomPage({Key? key}) : super(key: key);

  @override
  State<ProtoBottomPage> createState() => _ProtoBottomPageState();
}

class _ProtoBottomPageState extends State<ProtoBottomPage> {
  bool x = false;
  bool y = false;
  double screenheight = 0.0;
  double screenWIdth = 0.0;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          //title: Text("Menú"),
          //centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //Aca debe return menu
                    return const InicioPage(); //MenuMobile();
                  },
                ),
              );
            },
          ),
          backgroundColor: Color.fromARGB(255, 139, 137, 135),
          actions: <Widget>[
            Spacer(
              flex: 2,
            ),
            Padding(
                padding: EdgeInsets.only(right: screenWIdth * 0.1),
                child: Column(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              //Aca debe return menu
                              return const InicioPage(); //MenuMobile();
                            },
                          ),
                        );
                      },
                      child: const Icon(
                        //Icons.access_time_outlined,
                        //Icons.whatsapp_rounded,
                        //Icons.shopping_cart_checkout,
                        //Icons.table_restaurant_outlined,
                        //Icons.menu_book,
                        Icons.cake,
                        size: 26.0,
                      ),
                    ),
                    const Text(
                      "POSTRE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                    Spacer(),
                  ],
                )),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            // Icons.shopping_cart_checkout
            child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Container(
                  height: screenheight * 0.07,
                  color: CustomColors.SoviAzulMarino,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Spacer(),
                      IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.shopping_cart_sharp),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return InicioPage();
                              },
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      IconButton(
                        color: Colors.amber,
                        icon: const Icon(Icons.shopping_cart_sharp),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return InicioPage();
                              },
                            ),
                          );
                        },
                      ),
                      Spacer()
                    ],
                  ),
                ))),
        body: Center(
          child: Container(
            width: screenWIdth,
            height: screenheight,
            decoration: const BoxDecoration(
              //color: Colors.amber,
              color: Colors.white,
              //borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: []),
          ),
        ));
  }
}

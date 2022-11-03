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

class SellerPage extends StatelessWidget {
  const SellerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color.fromARGB(15, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Spacer(
          flex: 1,
        ),
        Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              "@Sancho Panza",
              style: TextStyle(fontSize: 30),
            ),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.account_circle,
              size: 50,
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.star,
              color: CustomColors.SoviAmarillo,
              size: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "4.5",
              style: TextStyle(fontSize: 30),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
        SingleChildScrollView(
          child: Column(children: [
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
            }, MediaQuery.of(context).size.height,
                MediaQuery.of(context).size.width),
          ]),
        )
      ]),
    )));
  }
}

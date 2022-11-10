import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/screens/login.dart';
import 'package:flutterapp/utils/custom_colors.dart';
import 'package:flutterapp/widgets/Producto.dart';
import 'package:flutterapp/widgets/SeachBarWidget.dart';
import 'package:flutterapp/widgets/UniversalButtonNoIcon.dart';
import 'package:flutterapp/widgets/Widgets.dart';
import 'package:flutterapp/widgets/producto_vendedor.dart';

import '../widgets/UniversalButton.dart';
import 'Inicio.dart';

class SellerPage extends StatelessWidget {
  
  final String vendedor;

  SellerPage(this.vendedor);

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
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/paisaje.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 250,
          width: 400,
          child: Column(children: [
            Row(
              children: [
                SizedBox(width: 10, height: 100,),
                UniversalButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return  LoginPage();
                      },
                    ),
                  );
                }, Colors.transparent, "", Colors.white, 50, Colors.transparent,
                    Icon(Icons.arrow_back, size: 40, color: Colors.white, shadows: [
                  Shadow(
                    //offset: Offset(10.0, 10.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
              ],), 50, 50),
              ],
            ),
        Spacer(
          flex: 1,
        ),
        Row(
          children: [
            Spacer(
              flex: 1,
            ),
            Text(
              vendedor,
              style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold,shadows: <Shadow>[
                  Shadow(
                    //offset: Offset(0, 10.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],),
            ),
            SizedBox(width: 10,),
            Icon(
              Icons.account_circle,
              size: 70,
              color: Colors.white,
              shadows: [
                  Shadow(
                    //offset: Offset(10.0, 10.0),
                    blurRadius: 50.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
        SizedBox(
          height: 10,
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
            ),
          ],
        ),
        Spacer(flex: 10,)
          ],),
        ),
        SizedBox(height: 30,),
        Container(
          width: 400,
          height: 400,
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 30,),
              producto_vendedor("Café", "assets/cafe.jpg", 2000, 4, (){}, MediaQuery.of(context).size.height,
               MediaQuery.of(context).size.width),
               SizedBox(height: 10,),
               producto_vendedor("Papitas", "assets/papitas.jpg", 3000, 3, (){}, MediaQuery.of(context).size.height,
               MediaQuery.of(context).size.width),
               SizedBox(height: 10,),
               producto_vendedor("Dulces", "assets/dulces_copy.jpg", 1000, 4.5, (){}, MediaQuery.of(context).size.height,
               MediaQuery.of(context).size.width),
               SizedBox(height: 10,),
               producto_vendedor("Barquillos", "assets/barquillos.jpg", 2500, 5, (){}, MediaQuery.of(context).size.height,
               MediaQuery.of(context).size.width),
            ]),) 
        )
        
      ]),
    )));
  }
}

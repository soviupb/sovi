import 'package:flutter/material.dart';
import 'package:flutterapp/screens/BuquedaSeller.dart';
import 'package:flutterapp/screens/categorias.dart';
import 'dart:math' as math;

import 'package:flutterapp/screens/home.dart';
import 'package:flutterapp/screens/productos.dart';
import 'package:flutterapp/utils/custom_colors.dart';

//import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _page = 0;
  PageController pageController = PageController();
  //GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  onPageChanged(int index) {
    setState(() {
      _page = index;
    });
  }

  onTap(_page) {
    pageController.jumpToPage(
      _page,
    );
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView(
        children: <Widget>[
          HomePage(),
          ProdPage(),
          CatPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: CustomColors.SoviMagenta,
          //border: Border.all(color: Colors.green), //quitar es solo para visulizar como queda
        ),
        child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: () {
                  onTap(0);
                },
                icon: Icon(
                  Icons.home,
                  color: _page == 0 ? Colors.white : Colors.grey,
                  size: size.width * 0.10,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  onTap(1);
                },
                icon: Icon(
                  Icons.search,
                  color: _page == 1 ? Colors.white : Colors.grey,
                  size: size.width * 0.10,
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  onTap(2);
                },
                icon: Icon(
                  Icons.menu,
                  color: _page == 2 ? Colors.white : Colors.grey,
                  size: size.width * 0.10,
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

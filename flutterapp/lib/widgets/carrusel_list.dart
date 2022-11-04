import 'package:flutter/cupertino.dart';
import 'package:flutterapp/widgets/carrusel_feed.dart';

class Carrusel_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          Carrusel_feed('assets/dulces.jpg'),
          Carrusel_feed('assets/brownie.jpeg'),
          Carrusel_feed('assets/barquillo.jpg'),
        ],
      ),
    );
  }
}

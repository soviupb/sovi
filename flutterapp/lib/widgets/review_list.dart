import 'package:flutter/cupertino.dart';
import 'package:flutterapp/widgets/review.dart';

class reviewlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Review('assets/jose.jpg', 'Jose Miguel',
            'Muy buena aplicacion dentro de la U'),
        new Review('assets/valeria.jpg', 'camila Padilla',
            'Deberian expandir sus servicios :)')
      ],
    );
  }
}

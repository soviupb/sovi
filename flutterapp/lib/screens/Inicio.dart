import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/widgets/Widgets.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
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
          color: Color.fromARGB(255, 245, 244, 242),
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            //TitleText(""),
            const Spacer(flex: 1),
            const Image(image: AssetImage("assets/logo.png")),
            SubtitleText("https://www.youtube.com/watch?v=AiedUZWxGtA"),
            const Spacer(flex: 4),
            //subTitleText("Ingresa tu usuario"),
            SizedBox(
              width: screenWIdth * 0.7,
              child: TextField(
                decoration: const InputDecoration(hintText: "Es usted jose?"),
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  setState(() {
                    y = true;
                  });
                },
              ),
            ),
            y
                ? SizedBox(
                    width: screenWIdth * 0.7,
                    child: TextField(
                      decoration: const InputDecoration(hintText: "Gay"),
                      textAlign: TextAlign.center,
                      onSubmitted: (value) {
                        setState(() {
                          x = true;
                        });
                      },
                    ),
                  )
                : Container(),

            SmallButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const InicioPage();
                    },
                  ),
                );
              },
              Colors.transparent,
              "Back",
              Colors.black,
            ),
            const Spacer(flex: 1),
            SubtitleText("Sovi™, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}

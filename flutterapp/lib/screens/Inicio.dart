import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/utils/custom_colors.dart';
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
            const Spacer(flex: 6),
            const Image(image: AssetImage("assets/logo.png")),
            SubtitleText("No esperes más, dale gusto a tu panzita"),
            const Spacer(flex: 10),
            //subTitleText("Ingresa tu usuario"),
            LargeButton(() {
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
            }, Colors.white, "Cliente", Colors.black, CustomColors.SoviMagenta,
                Icon(Icons.person), screenheight * 0.1, screenWIdth * 0.8),
            Spacer(flex: 1),
            LargeButton(() {
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
            },
                Colors.white,
                "Vendedor",
                Colors.black,
                CustomColors.SoviMagenta,
                Icon(Icons.menu_book_rounded),
                screenheight * 0.08,
                screenWIdth * 0.8),

            const Spacer(flex: 1),
            SmallButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const InicioPage();
                  },
                ),
              );
            }, CustomColors.SoviMagenta, "Back", Colors.black,
                CustomColors.SoviMagenta),
            const Spacer(flex: 5),
            SubtitleText("Sovi™, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}

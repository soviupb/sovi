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
            const Spacer(flex: 2),
            const Image(image: AssetImage("assets/logo.png")),
            SubtitleText("No esperes más, dale gusto a tu panzita"),
            const Spacer(flex: 10),
            //subTitleText("Ingresa tu usuario"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                XtrasmallButton(
                  () {
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
                  "Menú", CustomColors.SoviMagenta
                ),
                Spacer(),
                XtrasmallButton(
                  () {
                    //Aqui irá nuestra función de Sign In
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //Aca debe return menu
                          return const InicioPage();
                        },
                      ),
                    );
                  },
                  Colors.white,
                  "Ubicación", CustomColors.SoviMagenta
                ),
                const Spacer(),
                XtrasmallButton(
                  () {
                    //Aqui irá nuestra función de Sign In
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //Aca debe return menu
                          return const InicioPage();
                        },
                      ),
                    );
                  },
                  Colors.white,
                  "Eventos",
                  CustomColors.SoviMagenta
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
            const Spacer(flex: 1),
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
              CustomColors.SoviMagenta, 
              "Back",
              Colors.black, CustomColors.SoviMagenta
            ),
            const Spacer(flex: 1),
            SubtitleText("Sovi™, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}

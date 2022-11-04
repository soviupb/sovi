import 'package:flutter/material.dart';
import 'package:flutterapp/screens/Inicio.dart';
import 'package:flutterapp/utils/custom_colors.dart';

import '../utils/Validator.dart';
import '../utils/database.dart';
import '../widgets/custom_form.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _controller = TextEditingController();
  final FocusNode _idFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 3),
            const Text("Ingresa tu identificador"),
            const Spacer(),
            SizedBox(
              width: 350,
              child: CustomFormField(
                hint: 'El ID único en Firestore',
                inputAction: TextInputAction.done,
                focusNode: _idFocusNode,
                maxLines: 1,
                controller: _controller,
                validator: (value) => Validator.validateUserID(
                  uid: value,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                if (_controller.text.length > 3) {
                  Database.userUid = _controller.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const InicioPage();
                      },
                    ),
                  );
                }
              },
              child: const Text(
                "Entrar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CustomColors.SoviAzulMarino,
                ),
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}

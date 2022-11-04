import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutterapp/screens/Inicio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC_i8JMOAocag1EKSdTan-gNOtmLNknZ8E",
          authDomain: "sovitest-ee963.firebaseapp.com",
          projectId: "sovitest-ee963",
          storageBucket: "sovitest-ee963.appspot.com",
          messagingSenderId: "1033835878421",
          appId: "1:1033835878421:web:2bfb2a45b862fefcbe161c"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          backgroundColor: Color(0xFFBFD6D9),
          body: InicioPage(),
        ));
  }
}

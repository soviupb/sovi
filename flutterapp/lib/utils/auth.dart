

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/utils/database.dart';

class CustomAuth {

  static late User? user;
  static  final FirebaseAuth _auth= FirebaseAuth.instance;


  static void register({required String email,required String pass}) async {
    final User? user = (await _auth.createUserWithEmailAndPassword(
      email: email,
      password: pass,
    )).user;
    if(user!=null){
      Database.addUser(name: email, email: email, uid: user.uid);
    }
    /* if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user.uid;
      });
    } else {
      setState(() {
        _success = true;
      });
    } */
  }

  static void signInWithEmailAndPassword({required String email,required String pass}) async {  try {
      user = (await _auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      ))
          .user;
          print("Bienvenido");
    } catch (error) {
      print(error);
      user = null;
    }

    /* if (user != null) {
      setState(() {
        _success = true;
        _userEmail = user!.email;
      });
    } else {
      setState(() {
        _success = false;
      });
    } */
  }
}
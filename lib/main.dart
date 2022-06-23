import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth_controller.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((Value)=> Get.put(AuthController()));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context)
  {
    return GetMaterialApp(
    title: 'flutter',home: Scaffold
    (appBar: AppBar(title: Text('My Flutter App',style: TextStyle
    (color: Colors.black54,),)
    ,backgroundColor: Colors.greenAccent,),
    backgroundColor: Colors.white,
    body: LoginPage()
  ));
  }
}
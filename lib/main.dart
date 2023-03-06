import 'package:demoapp/Screen/View/DetailsScreen.dart';
import 'package:demoapp/Screen/View/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Screen/View/WebviewScreen.dart';
import 'Screen/View/singinScreen.dart';
import 'Screen/View/singupScreen.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'home',
      routes: {
        '/': (context) => SignInScreen(),
        'signup': (context) => SignUpScreen(),
        'home': (context) => HomeScreen(),
        'details': (context) => DetailScreen(),
        'web': (context) => WebviewScreen(),
      }));
}

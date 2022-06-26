import 'package:flutter/material.dart';
import 'package:shop/screens/cartpage.dart';
import 'package:shop/screens/itempage.dart';
import 'package:shop/screens/startscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartScreen(),
        routes: {
          "cartPage": (context) => CartPage(),
          "ItemPage": (context) => ItemPage()
        });
  }
}

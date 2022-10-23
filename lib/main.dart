import 'package:flutter/material.dart';
import 'package:store/Screens/main_screen.dart';
import 'package:store/Screens/product_Screen.dart';
import 'package:store/Screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: Colors.purple[50],
        primarySwatch: Colors.purple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/profile": (context) => ProfileScren(),
        "/product": (context) => ProductScreen(),
      },
    );
  }
}

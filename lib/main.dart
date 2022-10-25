import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Screens/cart_screen.dart';
import 'package:store/Screens/intro_screen.dart';
import 'package:store/Screens/main_screen.dart';
import 'package:store/Screens/product_Screen.dart';
import 'package:store/Screens/profile_screen.dart';
import 'package:store/Screens/signup_screen.dart';
import 'package:store/Screens/students_screen.dart';
import 'package:store/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(
      create: (context) => CartProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          canvasColor: Colors.purple[50],
          primarySwatch: Colors.purple,
        ),
        initialRoute: "/main",
        routes: {
          "/": (context) => IntroScreen(),
          "/main": (context) => MainScreen(),
          "/signup": (context) => SignUpScreen(),
          "/profile": (context) => ProfileScreen(),
          "/product": (context) => ProductScreen(),
          "/students": (context) => StudentsScreen(),
          "/cart": (context) => CartScreen()
        },
      ),
    );
  }
}

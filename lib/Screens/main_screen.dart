import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store/Screens/cart_screen.dart';
import 'package:store/pages/cart_page.dart';
import 'package:store/pages/category_page.dart';
import 'package:store/pages/home_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current = 0;
  List<Widget> pages = [Homepage(), CategoryPage(), CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Store"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profile");
              },
              icon: Icon(Icons.person))
        ],
      ),
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          currentIndex: current,
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.purple,
              label: "Home",
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              label: "Category",
              icon: Icon(Icons.category),
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.red,
              label: "Cart",
              icon: Icon(Icons.shopping_bag_outlined),
            ),
          ]),
    );
  }
}

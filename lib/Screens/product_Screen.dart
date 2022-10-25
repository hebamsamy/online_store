import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Data.dart';
import 'package:store/Widgets/product_card.dart';
import 'package:store/providers/cart_provider.dart';

class ProductScreen extends StatelessWidget {
  int categoryID = 0;
  String categoryName = "All";
  Data store = Data();
  List<Product> prds = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context, listen: false);
    print("screen");
    Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, dynamic>;
    categoryID = args["id"];
    categoryName = args["name"];
    prds = store.filterByCategory(categoryID);
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        actions: [
          Consumer<CartProvider>(builder: (context, value, child) {
            print("badge");
            return Badge(
              // animationType: ,
              badgeContent: Text(value.Count.toString()),
              position: BadgePosition(start: 30, top: 0),
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed("/cart");
                },
              ),
            );
          })
        ],
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: prds.map((e) => ProductCard(product: e)).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store/Data.dart';
import 'package:store/providers/cart_provider.dart';

class ProductCard extends StatelessWidget {
  ProductCard({required this.product});
  Product product;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context);
    return Card(
      child: Column(children: [
        Expanded(child: Image.network(product.imgURL)),
        ListTile(
          title: Text(product.name),
          leading: IconButton(
            icon: Icon(provider.isInCart(product)
                ? Icons.shopping_bag
                : Icons.shopping_bag_outlined),
            onPressed: () {
              provider.toggle(product);
            },
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:store/providers/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Column(children: [
        Card(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 25),
            ),
            Consumer<CartProvider>(
                builder: (context, value, child) => Chip(
                      label: Text("${value.Total} \$"),
                    ))
          ]),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.monetization_on),
            label: Text("Check out")),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Consumer<CartProvider>(
            builder: (context, value, child) => ListView.builder(
                itemCount: value.CartList.length,
                itemBuilder: (context, index) => CartItem(
                      cart: value.CartList[index],
                    )),
          ),
        )
      ]),
    );
  }
}

class CartItem extends StatelessWidget {
  CartItem({required this.cart});
  Cart cart;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CartProvider>(context);
    return Dismissible(
      key: ValueKey(cart.id),
      child: Card(
        margin: EdgeInsets.all(8),
        child: ListTile(
          leading: Text(cart.supPrice.toString()),
          title: Text(cart.product.name),
        ),
      ),
      onDismissed: ((direction) {
        provider.removefromCart(cart.product.id);
      }),
    );
  }
}

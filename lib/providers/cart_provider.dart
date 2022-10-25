import 'package:flutter/cupertino.dart';
import 'package:store/Data.dart';

class CartProvider with ChangeNotifier {
  List<Cart> _cartList = [];

  List<Cart> get CartList {
    return [..._cartList];
  }

  int get Count {
    return _cartList.length;
  }

  double get Total {
    double total = 0.0;
    _cartList.forEach((element) {
      total += element.supPrice;
    });
    return total;
  }

  bool isInCart(Product product) {
    return _cartList
            .where((element) => element.product.id == product.id)
            .length >
        0;
  }

  toggle(Product product) {
    if (_cartList.where((element) => element.product.id == product.id).length ==
        0) {
      print("new");
      addtoCart(product);
    } else {
      print("old");
      removefromCart(product.id);
    }
  }

  addtoCart(Product product) {
    _cartList.add(Cart(
        id: _cartList.length,
        product: product,
        qty: 1,
        supPrice: product.price));
    notifyListeners();
  }

  removefromCart(int prdid) {
    _cartList.removeWhere((cart) => cart.product.id == prdid);
    notifyListeners();
  }
}

class Cart {
  int id;
  double supPrice;
  int qty;
  Product product;
  Cart({
    required this.id,
    required this.product,
    required this.qty,
    required this.supPrice,
  });
}

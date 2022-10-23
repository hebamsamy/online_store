import 'package:flutter/material.dart';
import 'package:store/Data.dart';

class ProductScreen extends StatelessWidget {
  int categoryID = 0;
  String categoryName = "All";
  Data store = Data();
  List<Product> prds = [];

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, dynamic>;
    categoryID = args["id"];
    categoryName = args["name"];
    prds = store.filterByCategory(categoryID);
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryName),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: prds
              .map((e) => Card(
                    child: Column(children: [
                      Expanded(child: Image.network(e.imgURL)),
                      ListTile(
                        title: Text(e.name),
                        leading: Text("${e.price} \$"),
                      )
                    ]),
                  ))
              .toList(),
        ));
  }
}

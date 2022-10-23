import 'package:flutter/material.dart';
import 'package:store/Data.dart';

class CategoryPage extends StatelessWidget {
  var store = Data();
  List<Categori> list = [];
  CategoryPage() {
    this.list = store.CategoryList;
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list
          .map((e) => InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("/product",
                      arguments: {'id': e.id, "name": e.name});
                },
                child: ListTile(
                  title: Text(e.name),
                  subtitle: Text(e.desciption),
                ),
              ))
          .toList(),
    );
  }
}

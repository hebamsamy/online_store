class Data {
  List<Categori> CategoryList = [
    Categori(id: 1, name: "Laptops", desciption: "This is description"),
    Categori(id: 2, name: "Tablets", desciption: "This is description"),
    Categori(id: 3, name: "Mobiles", desciption: "This is description"),
    Categori(id: 4, name: "Electronics", desciption: "This is description"),
  ];

  List<Product> ProductList = [
    Product(
        id: 1,
        name: "Lenvo thinpad X230",
        price: 100,
        quantity: 10,
        categoryID: 1,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 2,
        name: "Dell",
        price: 200,
        quantity: 20,
        categoryID: 1,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 3,
        name: "Lenovo Tab",
        price: 100,
        quantity: 10,
        categoryID: 2,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 4,
        name: "Samsung Tab",
        price: 100,
        quantity: 10,
        categoryID: 2,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 5,
        name: "Samsung note 10",
        price: 100,
        quantity: 10,
        categoryID: 3,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 6,
        name: "Samsung S10",
        price: 100,
        quantity: 10,
        categoryID: 3,
        imgURL: "https://picsum.photos/200"),
    Product(
        id: 7,
        name: "tochiba Utlra",
        price: 60000,
        quantity: 14,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 8,
        name: "Apple Utlra",
        price: 7800060,
        quantity: 6,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 9,
        name: "test Utlra",
        price: 7800060,
        quantity: 3,
        imgURL: "https://picsum.photos/200",
        categoryID: 4),
    Product(
        id: 10,
        name: "oppo",
        imgURL: "https://picsum.photos/200",
        quantity: 33,
        price: 44444444,
        categoryID: 1),
    Product(
        name: "sm G999",
        price: 7800060,
        quantity: 3,
        imgURL: "https://picsum.photos/200",
        categoryID: 4,
        id: 11),
  ];

  List<Product> filterByCategory(int id) {
    // List<Product> newlist = [];
    // this.ProductList.forEach((element) {
    //   if (element.categoryID == id) {
    //     newlist.add(element);
    //   }
    // });
    // return newlist;
    return this
        .ProductList
        .where((element) => element.categoryID == id)
        .toList();
  }
}

class Product {
  int id;
  int quantity;
  int categoryID;
  double price;
  String name;
  String imgURL;
  Product({
    required this.id,
    required this.name,
    required this.imgURL,
    required this.categoryID,
    required this.price,
    required this.quantity,
  });
}

class Categori {
  int id;
  String name;
  String desciption;
  Categori({
    required this.id,
    required this.name,
    required this.desciption,
  });
}

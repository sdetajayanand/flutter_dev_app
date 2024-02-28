import 'dart:ui';

class Products {
  final String name;
  final String image;
  final int price;

  Products(this.name, this.image, this.price);

  static List<Products> cartProducts = [];
  static Map<Products, int> cartProductsMap = {};

  static void addItem(Products products) {
    if (cartProductsMap.containsKey(products)) {
      // If the key is already present, increment its value by 1
      cartProductsMap[products] = cartProductsMap[products]! + 1;
    } else {
      // If the key is not present, set its value to 1
      cartProductsMap[products] = 1;
    }
  }

  static void reduceItem(Products products) {
    if (cartProductsMap.containsKey(products)) {
      // If the key is already present, increment its value by 1
      cartProductsMap[products] = cartProductsMap[products]! - 1;
    }
  }

  static Map<Products, int> getList() {
    return cartProductsMap;
  }

}
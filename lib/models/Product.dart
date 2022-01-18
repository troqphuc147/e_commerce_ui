import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image;
  final double price;
  final double salePrice;
  final String nameProduct;
  final String nameShop;
  final double rating;
  final int numOfVote;
  Product(this.id, this.image, this.price, this.salePrice, this.nameProduct,
      this.nameShop, this.rating, this.numOfVote);
}

List<Product> listSaleProduct = [
  Product(0, "assets/images/product_sale_female.png", 15, 12, "Evening Dress",
      "Dorothy Perkins", 10, 10),
  Product(1, "assets/images/block_female2.png", 22, 19, "Sport Dress", "Sitlly",
      10, 7),
  Product(2, "assets/images/sale3.png", 30, 18, "Sport Dress",
      "Dorothy Perkins", 8, 8),
];
List<Product> listNewProduct = [
  Product(0, "assets/images/new.png", 30, 30, "Blouse",
      "OVS", 10,5),
  Product(0, "assets/images/new2.png", 10, 10, "T-Shirt Sailing",
      "Mango Boy", 8.6, 9),
  Product(0, "assets/images/new2.png", 40, 40, "Jeans",
      "Cool", 9.5, 10),
];

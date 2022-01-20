import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image;
  final double price;
  final double salePrice;
  final String nameProduct;
  final String nameShop;
  final String category;
  final double rating;
  final int numOfVote;
  Product(this.id, this.image, this.price, this.salePrice, this.nameProduct,
      this.nameShop, this.rating, this.numOfVote, this.category);
}

List<Product> listSaleProduct = [
  Product(0, "assets/images/product_sale_female.png", 15, 12, "Evening Dress",
      "Dorothy Perkins", 10, 10, "Short dress"),
  Product(1, "assets/images/block_female2.png", 22, 19, "Sport Dress", "Sitlly",
      10, 7, "Sport clothes"),
  Product(2, "assets/images/sale3.png", 30, 18, "Sport Dress",
      "Dorothy Perkins", 8, 8, "Sport clothes"),
];
List<Product> listNewProduct = [
  Product(0, "assets/images/new.png", 30, 30, "Blouse", "OVS", 10, 5,
      "Sport clothes"),
  Product(0, "assets/images/new2.png", 10, 10, "T-Shirt Sailing", "Mango Boy",
      8.6, 9, "Sport clothes"),
  Product(0, "assets/images/new2.png", 40, 40, "Jeans", "Cool", 9.5, 10,
      "Sport clothes"),
];

class ProductInfor {
  final Product product;
  final List<String> listImages = [
    "assets/images/model2.png",
    "assets/images/model1.png"
  ];

  ProductInfor(this.product);
}

ProductInfor productInfor = ProductInfor(listSaleProduct[1]);

import 'package:flutter/material.dart';
class Category{
  final String images;
  final String category;
  Category( this.images, this.category);
}
List<Category> listCategories = [
  Category("assets/images/category1.png", "New"),
  Category("assets/images/category2.png", "Clothes"),
  Category("assets/images/category3.png", "Shoes"),
  Category("assets/images/category4.png", "Accesories"),
];

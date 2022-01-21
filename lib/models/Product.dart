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
  final String script;
  Product(this.id, this.image, this.price, this.salePrice, this.nameProduct,
      this.nameShop, this.rating, this.numOfVote, this.category, this.script);
}

List<Product> listSaleProduct = [
  Product(
      0,
      "assets/images/product_sale_female.png",
      15,
      12,
      "Evening Dress",
      "Dorothy Perkins",
      10,
      10,
      "Short dress",
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
  Product(
      1,
      "assets/images/block_female2.png",
      22,
      19,
      "Sport Dress",
      "Sitlly",
      10,
      7,
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage."),
  Product(
      2,
      "assets/images/sale3.png",
      30,
      18,
      "Sport Dress",
      "Dorothy Perkins",
      8,
      8,
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways."),
];
List<Product> listNewProduct = [
  Product(
      0,
      "assets/images/new.png",
      30,
      30,
      "Blouse",
      "OVS",
      10,
      5,
      "Sport clothes",
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
  Product(
      0,
      "assets/images/new2.png",
      10,
      10,
      "T-Shirt Sailing",
      "Mango Boy",
      8.6,
      9,
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage."),
  Product(
      0,
      "assets/images/new2.png",
      40,
      40,
      "Jeans",
      "Cool",
      9.5,
      10,
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways."),
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

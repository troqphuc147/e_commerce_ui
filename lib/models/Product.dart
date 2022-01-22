import 'package:flutter/material.dart';

class Product {
  final int id;
  final String image;
  final double price;
  final double salePrice;
  final String nameProduct;
  final String nameShop;
  final String category;
  final List<int> rating;
  final String script;
  Product(this.id, this.image, this.price, this.salePrice, this.nameProduct,
      this.nameShop, this.rating, this.category, this.script);
  double getRating() {
    double sum = 0.0;
    for (var element in rating) {
      sum += element;
    }
    int l = rating.length;
    return 2 * sum / l;
  }

  List<int> getNumOfEachLevel() {
    List<int> listNumOfEachLevelRating = [];
    for (int i = 0; i < 5; i++) {
      listNumOfEachLevelRating.add(0);
    }
    for (var element in rating) {
      if (element == 1) {
        listNumOfEachLevelRating[0] += 1;
      } else if (element == 2) {
        listNumOfEachLevelRating[1] += 1;
      } else if (element == 3) {
        listNumOfEachLevelRating[2] += 1;
      } else if (element == 4) {
        listNumOfEachLevelRating[3] += 1;
      } else {
        listNumOfEachLevelRating[4] += 1;
      }
    }
    return listNumOfEachLevelRating;
  }
}

List<Product> listSaleProduct = [
  Product(
      0,
      "assets/images/product_sale_female.png",
      15,
      12,
      "Evening Dress",
      "Dorothy Perkins",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 2, 1],
      "Short dress",
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
  Product(
      1,
      "assets/images/block_female2.png",
      22,
      19,
      "Sport Dress",
      "Sitlly",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage."),
  Product(
      2,
      "assets/images/sale3.png",
      30,
      18,
      "Sport Dress",
      "Dorothy Perkins",
      [5, 4, 3, 5, 5, 5, 5, 4, 4, 5, 3, 1, 4],
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
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 4],
      "Sport clothes",
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim."),
  Product(
      0,
      "assets/images/new2.png",
      10,
      10,
      "T-Shirt Sailing",
      "Mango Boy",
      [5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage."),
  Product(
      0,
      "assets/images/new2.png",
      40,
      40,
      "Jeans",
      "Cool",
      [5, 4, 3, 5, 5, 5, 5, 5, 5, 5, 4],
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

import 'package:e_commerce_ui/screens/home/components/sale_product.dart';
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
  bool isSoldOut = false;
  Product(this.id, this.image, this.price, this.salePrice, this.nameProduct,
      this.nameShop, this.rating, this.category, this.script, this.isSoldOut);
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

class FavoriteProduct {
  final int id;
  final String image;
  final double price;
  final double salePrice;
  final String nameProduct;
  final String nameShop;
  final String category;
  final String size;
  final String color;
  final List<int> rating;
  final String script;
  bool isSoldOut = false;
  FavoriteProduct(
      this.id,
      this.image,
      this.price,
      this.salePrice,
      this.nameProduct,
      this.nameShop,
      this.rating,
      this.category,
      this.script,
      this.isSoldOut,
      this.size,
      this.color);
  double getRating() {
    double sum = 0.0;
    for (var element in rating) {
      sum += element;
    }
    int l = rating.length;
    return 2 * sum / l;
  }

  Product toProduct() {
    return Product(id, image, price, salePrice, nameProduct, nameShop, rating,
        category, script, isSoldOut);
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
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
      false),
  Product(
      1,
      "assets/images/block_female2.png",
      22,
      19,
      "Sport Dress",
      "Sitlly",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false),
  Product(
      2,
      "assets/images/sale3.png",
      30,
      18,
      "Sport Dress",
      "Dorothy Perkins",
      [5, 4, 3, 5, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false),
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
      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
      false),
  Product(
      0,
      "assets/images/new2.png",
      10,
      10,
      "T-Shirt Sailing",
      "Mango Boy",
      [5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false),
  Product(
      0,
      "assets/images/new2.png",
      40,
      40,
      "Jeans",
      "Cool",
      [5, 4, 3, 5, 5, 5, 5, 5, 5, 5, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false),
];

class ProductInfor {
  final Product product;
  final List<String> listImages = [
    "assets/images/model2.png",
    "assets/images/model1.png"
  ];

  ProductInfor(this.product);
}

List<Product> listWomanTop = [
  Product(
      1,
      "assets/images/ws.png",
      34,
      19,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false),
  Product(
      2,
      "assets/images/ws1.png",
      30,
      18,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false),
  Product(
      3,
      "assets/images/ws.png",
      25,
      20,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false),
  Product(
      4,
      "assets/images/ws1.png",
      34,
      14,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false),
  Product(
      5,
      "assets/images/ws.png",
      14,
      12,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false),
  Product(
      6,
      "assets/images/ws1.png",
      30,
      15,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false),
];
List<FavoriteProduct> listFavoriteProducts = [
  FavoriteProduct(
      1,
      "assets/images/favorite1.png",
      22,
      22,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false,
      "S",
      "Black"),
  FavoriteProduct(
      2,
      "assets/images/favorite2.png",
      30,
      30,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false,
      "XL",
      "Red"),
  FavoriteProduct(
      3,
      "assets/images/favorite3.png",
      22,
      22,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      true,
      "M",
      "Yellow"),
  FavoriteProduct(
      4,
      "assets/images/favorite4.png",
      30,
      30,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false,
      "XXL",
      "Blue"),
  FavoriteProduct(
      5,
      "assets/images/favorite2.png",
      22,
      22,
      "T-Shirt SPANISH",
      "Mango",
      [5, 4, 3, 5, 5, 5, 5, 4, 5, 5, 5, 2, 1, 1, 3, 2, 4],
      "Sport clothes",
      "Always bringing its A-game, sports giant PUMA is all about setting and smashing goals in its quest to be forever faster. Feeling motivated yet? Join the club. Packed with all our favourite picks, our PUMA at ASOS edit brings the brand’s MVPs to your rotation. From comfy-cool joggers, hoodies and sweatshirts to caps, bags and trainers, it’s all here to cop. Activewear gets levelled up too, with sweat-wicking tops, leggings and sports bras taking centre stage.",
      false,
      "M",
      "Orange"),
  FavoriteProduct(
      6,
      "assets/images/favorite3.png",
      30,
      30,
      "Blouse",
      "Dorothy Perkins",
      [5, 4, 3, 5, 3, 5, 4, 5, 5, 5, 4, 4, 5, 3, 1, 4],
      "Sport clothes",
      "Godfather of the dad-trainer aesthetic, New Balance has been flexing its footwear and clothing credentials for over 100 years. The brand’s supportive running trainers are all the motivation you need, while its retro lifestyle shoes are your go-tos for added style props. Scroll everything from T-shirts, leggings and accessories in our New Balance at ASOS edit, plus training tops and sports bras in a range of slick colourways.",
      false,
      "M",
      "Black"),
];

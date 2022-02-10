import 'package:e_commerce_ui/models/Product.dart';

class User {
  String avatar;
  String name;
  String email;
  User(this.email, this.avatar, this.name);
}

class UserOrder {
  String no;
  String trackingNumber;
  DateTime dateTime;
  String shippingAddress;
  String paymentMethod;
  String deliveryMethod;
  String discount;
  List<ProductInBag> lisProduct;
  UserOrder(this.no, this.trackingNumber, this.dateTime, this.shippingAddress,
      this.paymentMethod, this.deliveryMethod, this.discount, this.lisProduct);
}

User myProfile = User("huynhtrongphuc@gmail.com",
    "assets/images/userAvatar.png", "Huynh Trong Phuc");
List<UserOrder> listOrder = [
  UserOrder(
      "1414553",
      "PV8884018484",
      DateTime(2021, 7, 8),
      "3 Newbridge Court ,Chino Hills,CA 91709, United States",
      "**** **** **** 3947",
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[0], listProductInBag[1]]),
  UserOrder(
      "1414555",
      "PV8884018485",
      DateTime(2021, 8, 2),
      "3 Newbridge Court ,Chino Hills,CA 91709, United States",
      "**** **** **** 3947",
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[1], listProductInBag[2]]),
  UserOrder(
      "1414567",
      "PV8884018486",
      DateTime(2021, 11, 2),
      "3 Newbridge Court ,Chino Hills,CA 91709, United States",
      "**** **** **** 3947",
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[1]]),
  UserOrder(
      "1414590",
      "PV8884018487",
      DateTime(2022, 1, 1),
      "3 Newbridge Court ,Chino Hills,CA 91709, United States",
      "**** **** **** 3947",
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[1], listProductInBag[2], listProductInBag[2]])
];

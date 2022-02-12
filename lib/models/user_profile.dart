import 'package:e_commerce_ui/models/product.dart';

class User {
  String avatar;
  String name;
  String email;
  List<PaymentMethod> paymentCardNumber;
  List<ShippingAddress> shippingAddress;
  User(this.email, this.avatar, this.name, this.shippingAddress,
      this.paymentCardNumber);
}

class ShippingAddress {
  String nameReceiver;
  String address;
  ShippingAddress(this.address, this.nameReceiver);
}

class PaymentMethod {
  String image;
  String cardNumber;
  String nameOwn;
  String dateExpiry;
  PaymentMethod(this.image, this.cardNumber, this.nameOwn, this.dateExpiry);
}

class UserOrder {
  String no;
  String trackingNumber;
  DateTime dateTime;
  ShippingAddress shippingAddress;
  PaymentMethod paymentMethod;
  String deliveryMethod;
  String discount;
  List<ProductInBag> lisProduct;
  UserOrder(this.no, this.trackingNumber, this.dateTime, this.shippingAddress,
      this.paymentMethod, this.deliveryMethod, this.discount, this.lisProduct);
}

User myProfile = User("huynhtrongphuc@gmail.com",
    "assets/images/userAvatar.png", "Huynh Trong Phuc", [
  ShippingAddress(
      "3 Newbridge Court Chino Hills, CA 91709, United States", "Jane Doe"),
  ShippingAddress(
      "3 Newbridge Court Chino Hills, CA 91709, United States", "Jane Doe"),
  ShippingAddress(
      "51 Riverside Chino Hills, CA 91709, United States", "Jane Doe"),
], [
  PaymentMethod("assets/images/blackmastercard.png",
      "* * * *  * * * *  * * * *  3947", "Jane Doe", "05/23"),
  PaymentMethod("assets/images/visacard.png", "* * * *  * * * *  * * * *  4546",
      "Huynh Trong Phuc", "06/02")
]);
List<UserOrder> listOrder = [
  UserOrder(
      "1414553",
      "PV8884018484",
      DateTime(2021, 7, 8),
      myProfile.shippingAddress[0],
      myProfile.paymentCardNumber[0],
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[0], listProductInBag[1]]),
  UserOrder(
      "1414555",
      "PV8884018485",
      DateTime(2021, 8, 2),
      myProfile.shippingAddress[0],
      myProfile.paymentCardNumber[1],
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[1], listProductInBag[2]]),
  UserOrder(
      "1414567",
      "PV8884018486",
      DateTime(2021, 11, 2),
      myProfile.shippingAddress[1],
      myProfile.paymentCardNumber[1],
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[0], listProductInBag[1]]),
  UserOrder(
      "1414590",
      "PV8884018487",
      DateTime(2022, 1, 1),
      myProfile.shippingAddress[2],
      myProfile.paymentCardNumber[0],
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      [listProductInBag[1], listProductInBag[2], listProductInBag[2]])
];

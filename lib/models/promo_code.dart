class PromoCode {
  String nameCode;
  String code;
  int dateTime;
  int salePercent;
  String image;
  PromoCode(
      this.nameCode, this.code, this.dateTime, this.salePercent, this.image);
}

List<PromoCode> listPromoCodes = [
  PromoCode("Personal offer", "mypromocode2020", 6, 10,
      "assets/images/promocode.png"),
  PromoCode(
      "Summer Sale", "summer2020", 23, 15, "assets/images/promocode2.png"),
  PromoCode("Personal offer", "mypromocode2021", 3, 22,
      "assets/images/promocode2.png"),
];

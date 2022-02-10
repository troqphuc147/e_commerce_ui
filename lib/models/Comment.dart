
class Comment {
  final Customer customer;
  final String comment;
  final DateTime dateTime;
  final int rating; // max 5
  final List<String> listPoto;
  Comment(this.customer, this.comment, this.dateTime, this.rating,
      this.listPoto); //max is 5 star;
}

class Customer {
  final String userName;
  final String avatar;

  Customer(this.userName, this.avatar);
}

List<Comment> listComments = [
  Comment(
      Customer("Helena Moore", "assets/images/Avatar.png"),
      "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
      DateTime(2021, 5, 5),
      4, []),
  Comment(
      Customer("Tammy Le", "assets/images/Avatar1.png"),
      "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
      DateTime(2021, 7, 8),
      5, [
    "assets/images/review1.png",
    "assets/images/review2.png",
    "assets/images/review3.png"
  ]),
  Comment(
      Customer("Richarlinson", "assets/images/Avatar2.png"),
      "I loved this dress so much as soon as I tried it on I knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body. When I put it on I felt like it thinned me put and I got so many compliments.",
      DateTime(2021, 7, 8),
      5, [
    "assets/images/review1.png",
    "assets/images/review2.png",
    "assets/images/review3.png"
  ])
];

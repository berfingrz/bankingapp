class CardModel {
  String user;
  String cardNumber;
  String cardExpired;
  String cardType;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;
  String cardLogoLeft;
  String cardLogoRight;

  CardModel(
      this.user,
      this.cardNumber,
      this.cardExpired,
      this.cardType,
      this.cardBackground,
      this.cardElementTop,
      this.cardElementBottom,
      this.cardLogoLeft,
      this.cardLogoRight);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
          item['user'],
          item['cardNumber'],
          item['cardExpired'],
          item['cardType'],
          item['cardBackground'],
          item['cardElementTop'],
          item['cardElementBottom'],
          item['cardLogoLeft'],
          item['cardLogoRight']),
    )
    .toList();

List<Map<String, dynamic>> cardData = [
  {
    "user": "BERFİN GÜRZ",
    "cardNumber": "**** **** **** 1727",
    "cardExpired": "17-01-2022",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "assets/svg/ellipse_top_pink.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_pink.svg",
    "cardLogoLeft": "assets/images/7928691502.png",
    "cardLogoRight": "assets/images/copy_163838702.png"
  },
  {
    "user": "BERFİN GÜRZ",
    "cardNumber": "**** **** **** 8213",
    "cardExpired": "03-01-2024",
    "cardType": "assets/images/mastercard_logo.png",
    "cardBackground": 0xFFFF70A3,
    "cardElementTop": "assets/svg/ellipse_top_blue.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg",
    "cardLogoLeft": "assets/images/7928691502.png",
    "cardLogoRight": "assets/images/copy_163838702.png"
  }
];

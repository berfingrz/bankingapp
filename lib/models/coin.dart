/*class CoinsModel {
  String name;
  String cryptoIconURL;
  String currency;
  String amount;
  String usdAmount;

  CoinsModel(this.name, this.cryptoIconURL, this.currency, this.amount,
      this.usdAmount);
}

List<CoinsModel> coins = coinsData
    .map((item) => CoinsModel(item['name'], item['cryptoIconURL'],
        item['currency'], item['amount'], item['usdAmount']))
    .toList();

List<Map<String, dynamic>> coinsData = [
  {
    "name": "Token 1",
    "cryptoIconURL": "assets/images/ethereum.png",
    "currency": "ETH",
    "amount": "12.482",
    "usdAmount": "\$51.97"
  },
  {
    "name": "Token 2",
    "cryptoIconURL": "assets/images/bitcoin.png",
    "currency": "BTC",
    "amount": "326.12",
    "usdAmount": "\$2100"
  },
  {
    "name": "Token 3",
    "cryptoIconURL": "assets/images/litecoin.png",
    "currency": "LTC",
    "amount": "326.12",
    "usdAmount": "\$51.97"
  },
];
*/
// histories model for transaction histories for history page
// sqlite

class Coins {
  late int coinsId;
  late String name;
  late String cryptoIconURL;
  late String currency;
  late String amount;
  late String usdAmount;

  //Constructor
  Coins(
      {required this.coinsId,
      required this.name,
      required this.cryptoIconURL,
      required this.currency,
      required this.amount,
      required this.usdAmount});

  //Extract a product object from a map object
  Coins.fromMap(Map<String, dynamic> map) {
    coinsId = map['coins_id'];
    name = map['coins_name'];
    cryptoIconURL = map['coins_cryptoIconURL'];
    currency = map['coins_currency'];
    amount = map['coins_amount'];
    usdAmount = map['coins_usdAmount'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'coins_id': coinsId,
      'coins_name': name,
      'coins_cryptoIconURL': cryptoIconURL,
      'coins_currency': currency,
      'coins_amount': amount,
      'coins_usdAmount': usdAmount
    };
    return map;
  }
}

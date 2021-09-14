class CoinsModel {
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
    "cryptoIconURL": "assets/images/university.png",
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

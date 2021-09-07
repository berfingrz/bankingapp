class TransactionModel {
  String name;
  String photo;
  String date;
  String amount;

  TransactionModel(this.name, this.photo, this.date, this.amount);
}

List<TransactionModel> transactions = transactionData
    .map((item) => TransactionModel(
        item['name'], item['photo'], item['date'], item['amount']))
    .toList();

List<Map<String, dynamic>> transactionData = [
  {
    "name": "School Fee",
    "photo": "assets/images/university.png",
    "date": "12st Sep 2021",
    "amount": "-\€127"
  },
  {
    "name": "Flying Ticket",
    "photo": "assets/images/airplane-flying.png",
    "date": "1st Oct 2021",
    "amount": "-\$100.00"
  },
  {
    "name": "Starbucks",
    "photo": "assets/images/big-cup-of-coffee.png",
    "date": "15th Mar 2022",
    "amount": "+\$5.00"
  }
];

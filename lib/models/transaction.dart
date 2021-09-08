class TransactionsTb {
  late int? transactionId;
  late String? transactionName;
  late String? transactionDate;
  late String? transactionPrice;

  //Constructor
  TransactionsTb(
      {required this.transactionId,
      required this.transactionName,
      required this.transactionDate,
      required this.transactionPrice});

  // Extract a Product Object from a Map Oject
  TransactionsTb.fromMap(Map<String, dynamic> map) {
    transactionId = map['transaction_id'];
    transactionName = map['transaction_name'];
    transactionDate = map['transaction_date'];
    transactionPrice = map['transaction_price'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'transaction_id': transactionId,
      'transaction_name': transactionName,
      'transaction_date': transactionDate,
      'transaction_price': transactionPrice
    };
    return map;
  }
}









/*class TransactionModel {
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
*/
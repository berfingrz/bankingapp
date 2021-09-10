/*
class TransactionsTb {
  late int? transactionid;
  late String transactionname;
  late String transactiondate;
  late String transactionprice;

  //Constructor
  TransactionsTb(
      {required this.transactionid,
      required this.transactionname,
      required this.transactiondate,
      required this.transactionprice});

  // Extract a Product Object from a Map Oject
  TransactionsTb.fromMap(Map<String, dynamic> map) {
    transactionid = map['transaction_id'];
    transactionname = map['transaction_name'];
    transactiondate = map['transaction_date'];
    transactionprice = map['transaction_price'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'transaction_id': transactionid,
      'transaction_name': transactionname,
      'transaction_date': transactiondate,
      'transaction_price': transactionprice
    };
    return map;
  }
}

*/

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

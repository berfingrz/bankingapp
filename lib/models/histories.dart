// histories model for transaction histories for history page
// sqlite

class Histories {
  late int historiesId;
  late String historiesIcon;
  late String historiesName;
  late String historiesDate;
  late String historiesPrice;

  //Constructor
  Histories(
      {required this.historiesId,
      required this.historiesIcon,
      required this.historiesName,
      required this.historiesDate,
      required this.historiesPrice});

  //Extract a product object from a map object
  Histories.fromMap(Map<String, dynamic> map) {
    historiesId = map['histories_id'];
    historiesIcon = map['histories_icon'];
    historiesName = map['histories_name'];
    historiesDate = map['histories_date'];
    historiesPrice = map['histories_price'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'histories_id': historiesId,
      'histories_icon': historiesIcon,
      'histories_name': historiesName,
      'histories_date': historiesDate,
      'histories_price': historiesPrice
    };
    return map;
  }
}

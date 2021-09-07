class OperationModel {
  String name;
  String selectedItem;
  String unselectedItem;

  OperationModel(this.name, this.selectedItem, this.unselectedItem);
}

List<OperationModel> operation = operationData
    .map(
      (item) => OperationModel(item['name'] ?? "", item['selectedItem'] ?? "",
          item['unselectedItem'] ?? ""),
    )
    .toList();

List<Map<String, dynamic>> operationData = [
  {
    "name": "Money\nTransfer",
    "selectedItem": "assets/svg/money_transfer_white.svg",
    "unselectedItem": "assets/svg/money_transfer_blue.svg"
  },
  {
    "name": "Bank\nWithdraw",
    "selectedItem": "assets/svg/bank_withdraw_white.svg",
    "unselectedIcon": "assets/svg/bank_withdraw_blue.svg"
  },
  {
    "name": "Insight\nTracking",
    "selectedItem": "assets/svg/insight_tracking_white.svg",
    "unselectedItem": "assets/svg/insight_tracking_blue.svg"
  },
];

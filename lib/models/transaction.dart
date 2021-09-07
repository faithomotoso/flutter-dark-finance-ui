class Transaction {
  String name;
  String description;
  String amount;
  String? svgIconName;

  Transaction(
      {required this.name,
      required this.description,
      required this.amount,
      this.svgIconName});
}

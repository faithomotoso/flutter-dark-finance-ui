import 'package:finance_dark_ui_challenge/models/card.dart';
import 'package:finance_dark_ui_challenge/models/transaction.dart';

class YourCardsController {
  static YourCardsController _cardsController = YourCardsController();

  YourCardsController();

  factory YourCardsController.instance() {
    return _cardsController;
  }

  int get numberOfCards => cards.length;

  List<DebitCard> cards = [
    DebitCard(
        cardNumber: "4717 4719 4091 1366",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
    DebitCard(
        cardNumber: "5892 9402 8547 2784",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
    DebitCard(
        cardNumber: "8563 9532 5478 0213",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
  ];

  List<Transaction> transactions = [
    Transaction(
        name: "Salary",
        description: "Salary for the month",
        amount: "+\$2,010",
        svgIconName: "briefcase.svg"),
    Transaction(
        name: "Paypal",
        description: "eBay shopping",
        amount: "+\$3,414",
        svgIconName: "paypal.svg"),
    Transaction(
        name: "Car Repair",
        description: "Car fixes",
        amount: "+\$125,010",
        svgIconName: "repair.svg"),
  ];
}

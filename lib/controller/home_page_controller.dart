import 'package:finance_dark_ui_challenge/models/card.dart';
import 'package:finance_dark_ui_challenge/models/flow.dart';
import 'package:finance_dark_ui_challenge/models/money_chart_data.dart';
import 'package:flutter/cupertino.dart';

class HomePageController {
  static HomePageController _controller = HomePageController();

  factory HomePageController.instance() {
    return _controller;
  }

  HomePageController();

  int get numberOfCards => cards.length;

  String moneyReceived = "\$40,000.91";

  List<MoneyChartData> moneyChartData = [
    MoneyChartData(amount: 50.0, date: "11 Apr"),
    MoneyChartData(amount: 623.9, date: "29 Apr"),
    MoneyChartData(amount: 4100, date: "5 June"),
    MoneyChartData(amount: 2342.8, date: "30 June"),
    MoneyChartData(amount: 6238.3, date: "3 July"),
    MoneyChartData(amount: 3759, date: "11 Sept"),
    MoneyChartData(amount: 3100, date: "20 Sept"),
  ];

  int percentageIncrease = 15;

  ValueNotifier<int> selectedMoneyFlowIndex = ValueNotifier<int>(0);

  List<MoneyFlow> moneyFlows = [
    MoneyFlow(incomePercentage: 75, outcomePercentage: 25, time: "Apr to Jun"),
    MoneyFlow(incomePercentage: 60, outcomePercentage: 40, time: "1 Month"),
    MoneyFlow(incomePercentage: 90, outcomePercentage: 10, time: "6 Months"),
    MoneyFlow(incomePercentage: 66, outcomePercentage: 34, time: "1 Year")
  ];

  List<Card> cards = [
    Card(
        cardNumber: "4717 4719 4091 1366",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
    Card(
        cardNumber: "5892 9402 8547 2784",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
    Card(
        cardNumber: "8563 9532 5478 0213",
        cardHolder: "Kari Jobe",
        expiryDate: "09/23"),
  ];

  void setMoneyFlowIndex(int index) {
    selectedMoneyFlowIndex.value = index;
  }
}

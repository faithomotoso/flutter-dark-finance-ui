import 'package:finance_dark_ui_challenge/controller/home_page_controller.dart';
import 'package:flutter/material.dart';

class MoneyFlowWidget extends StatefulWidget {
  @override
  _MoneyFlowWidgetState createState() => _MoneyFlowWidgetState();
}

class _MoneyFlowWidgetState extends State<MoneyFlowWidget> {
  HomePageController homePageController = HomePageController.instance();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: homePageController.selectedMoneyFlowIndex,
        builder: (ctx, index, child) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    for (int i = 0;
                        i < homePageController.moneyFlows.length;
                        i++)
                      Padding(
                        padding: EdgeInsets.only(
                            left: i == 0 ? 10 : 0,
                            right: i < homePageController.moneyFlows.length - 1
                                ? 10
                                : 0),
                        child: ChoiceChip(
                          label: Text(
                              homePageController.moneyFlows.elementAt(i).time),
                          selected: index == i,
                          onSelected: (b) {
                            homePageController.setMoneyFlowIndex(i);
                          },
                        ),
                      )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Income",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  )),
                  Text(
                      "${homePageController.moneyFlows.elementAt(index).incomePercentage}%"),
                  Icon(Icons.arrow_downward_outlined)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Outcome",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  )),
                  Text(
                      "${homePageController.moneyFlows.elementAt(index).outcomePercentage}%"),
                  Icon(Icons.arrow_upward_outlined)
                ],
              ),
            ],
          );
        });
  }
}

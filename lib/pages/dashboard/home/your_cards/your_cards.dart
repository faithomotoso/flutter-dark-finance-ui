import 'package:finance_dark_ui_challenge/controller/your_cards_controller.dart';
import 'package:finance_dark_ui_challenge/ui/components/transaction_tile.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:finance_dark_ui_challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class YourCardsPage extends StatelessWidget {
  static String pageName = "/your_cards";

  YourCardsController yourCardsController = YourCardsController.instance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: appPadding,
        children: [
          Text(
            "Your Cards",
            style: AppTextStyle.header2Style,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "You have ${yourCardsController.numberOfCards} active cards",
            style: TextStyle(color: Colors.white.withOpacity(0.7)),
          ),
          Text(
            "Recent Transactions",
            style: AppTextStyle.header2Style,
          ),
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: yourCardsController.transactions.length,
            itemBuilder: (context, index) => TransactionTile(
                transaction: yourCardsController.transactions.elementAt(index)),
          )
        ],
      ),
    );
  }
}

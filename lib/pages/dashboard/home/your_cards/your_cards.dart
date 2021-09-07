import 'package:finance_dark_ui_challenge/controller/your_cards_controller.dart';
import 'package:finance_dark_ui_challenge/ui/components/card_container.dart';
import 'package:finance_dark_ui_challenge/ui/components/debit_cards_display.dart';
import 'package:finance_dark_ui_challenge/ui/components/transaction_tile.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:finance_dark_ui_challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class YourCardsPage extends StatelessWidget {
  static String pageName = "/your_cards";

  YourCardsController yourCardsController = YourCardsController.instance();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
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
          children: [
            Padding(
              padding: appPadding.copyWith(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              // child: CardContainer(debitCard: yourCardsController.cards.first),
              child: DebitCardsDisplay(debitCards: yourCardsController.cards,),
            ),
            Padding(
              padding: appPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent Transactions",
                    style: AppTextStyle.header2Style,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 24,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: yourCardsController.transactions.length,
                    itemBuilder: (context, index) => TransactionTile(
                        transaction: yourCardsController.transactions.elementAt(index)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

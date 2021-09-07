import 'package:finance_dark_ui_challenge/models/transaction.dart';
import 'package:finance_dark_ui_challenge/ui/components/svg_icon_bg.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;

  TransactionTile({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.grey, borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          _transactionIcon(),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.name,
                style: AppTextStyle.header2Style.copyWith(fontSize: 18),
              ),
              Text(
                transaction.description,
              ),
            ],
          )),
          Text(transaction.amount)
        ],
      ),
    );
  }

  Widget _transactionIcon() {
    return SvgIconBg(
      svgIconPath: "assets/icons/${transaction.svgIconName}",
    );
  }
}

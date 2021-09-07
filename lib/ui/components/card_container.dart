import 'package:finance_dark_ui_challenge/models/card.dart';
import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardContainer extends StatelessWidget {
  final DebitCard debitCard;
  Color? color;

  CardContainer({required this.debitCard, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TranslucentContainer(
          color: color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _topRow(),
              const SizedBox(
                height: 20,
              ),
              Text(
                debitCard.cardNumber,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              _bottomRow()
            ],
          )),
    );
  }

  Widget _topRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/icons/chip.svg",
          color: Colors.white,
          height: 30,
          width: 20,
        ),
        SvgPicture.asset(
          "assets/icons/visa.svg",
          color: Colors.white,
        ),
      ],
    );
  }

  Widget _bottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _titleNText(title: "Card Holder", bottomText: debitCard.cardHolder),
        _titleNText(title: "Expiry Date", bottomText: debitCard.expiryDate),
      ],
    );
  }

  Widget _titleNText({required String title, required String bottomText}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          bottomText,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance_dark_ui_challenge/models/card.dart';
import 'package:finance_dark_ui_challenge/ui/components/card_container.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class DebitCardsDisplay extends StatelessWidget {
  List<DebitCard> debitCards;

  DebitCardsDisplay({required this.debitCards});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (int i = 0; i < debitCards.length; i++)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CardContainer(
              debitCard: debitCards.elementAt(i),
              color: i % 2 == 0 ? AppColors.orange : null,
            ),
          )
      ],
      options: CarouselOptions(
          enableInfiniteScroll: false, scrollPhysics: BouncingScrollPhysics()),
    );
  }
}

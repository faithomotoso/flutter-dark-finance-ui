import 'package:finance_dark_ui_challenge/ui/components/svg_icon_bg.dart';
import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TranslucentContainer(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upcoming",
                      style: AppTextStyle.header2Style.copyWith(fontSize: 26),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    _row(leftString: "Payments for Ferrari", rightString: "\$25,000"),
                    const SizedBox(
                      height: 5,
                    ),
                    _row(leftString: "Tour plan Dubai", rightString: "\$3,000"),
                  ],
                ),
              ),

              Positioned(
                top: -30,
                right: -30,
                child: SvgIconBg(
                  svgIconPath: "assets/icons/calendar.svg",
                ),
              ),
            ],
          )),
    );



    // return Stack(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 20),
    //       child: TranslucentContainer(
    //           child: Padding(
    //             padding: const EdgeInsets.symmetric(vertical: 10.0),
    //             child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //             Text(
    //               "Upcoming",
    //               style: AppTextStyle.header2Style.copyWith(fontSize: 20),
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             _row(leftString: "Payments for Ferrari", rightString: "\$25,000"),
    //             const SizedBox(
    //               height: 5,
    //             ),
    //             _row(leftString: "Tour plan Dubai", rightString: "\$3,000"),
    //         ],
    //       ),
    //           )),
    //     ),
    //     Positioned(
    //       right: 0,
    //       top: MediaQuery.of(context).size.height * 0.35,
    //       child: SvgIconBg(
    //         svgIconPath: "assets/icons/calendar.svg",
    //       ),
    //     )
    //   ],
    // );
  }

  Widget _row({required String leftString, required String rightString}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        leftString,
      ),
      Text(
        rightString,
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]);
  }
}

import 'package:finance_dark_ui_challenge/controller/home_page_controller.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/home/money_chart.dart';
import 'package:finance_dark_ui_challenge/pages/dashboard/home/money_flow_widget.dart';
import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:finance_dark_ui_challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  ///

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageController homePageController = HomePageController.instance();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: appPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                      )),
                  IconButton(
                      onPressed: () {
                        _showDialog();
                      },
                      icon: Icon(
                        Icons.more_vert,
                      ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your Balance",
                style: AppTextStyle.header2Style,
              ),
              const SizedBox(
                height: 30,
              ),
              balanceDetails(),
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 9,
          child: MoneyChartWidget(),
        ),
        const SizedBox(
          height: 30,
        ),
        MoneyFlowWidget()
      ],
    );
  }

  Widget balanceDetails() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Money received",
                  style: TextStyle(color: Colors.white.withOpacity(0.7))),
              const SizedBox(
                height: 5,
              ),
              Text(
                homePageController.moneyReceived,
                style: AppTextStyle.header1Style,
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              "${homePageController.percentageIncrease}%",
              style: TextStyle(fontSize: 18),
            )),
        const SizedBox(
          width: 10,
        ),
        Center(child: Icon(Icons.arrow_upward_outlined))
      ],
    );
  }

  void _showDialog() {
    showTranslucentDialog(context: context, child: Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text("Cards",),
            onTap: (){
              Navigator.pop(context);
              // Navigate to cards page
            },
          ),
          ListTile(
            title: Text("Upcoming",),
            onTap: (){},
          ),
          ListTile(
            title: Text("Statistics",),
            onTap: (){},
          ),
        ],
      ),
    ));
  }
}

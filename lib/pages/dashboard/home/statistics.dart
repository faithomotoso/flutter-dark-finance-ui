import 'package:finance_dark_ui_challenge/ui/components/translucent_container.dart';
import 'package:finance_dark_ui_challenge/utils/colors.dart';
import 'package:finance_dark_ui_challenge/utils/text_style.dart';
import 'package:finance_dark_ui_challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class StatisticsWidget extends StatefulWidget {
  @override
  _StatisticsWidgetState createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  final ValueNotifier<int> tabIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        tabIndex.value = tabController.index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: TranslucentContainer(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Statistics",
                  style: AppTextStyle.header2Style.copyWith(fontSize: 26),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12)),
                padding: appPadding,
                child: TabBar(
                  tabs: List<Widget>.from(
                      ["Incomings", "Outgoings"].map((e) => Text(
                        e,
                        style: TextStyle(color: Colors.white),
                      ))),
                  controller: tabController,
                  overlayColor: MaterialStateProperty.all(Colors.pink),
                  labelPadding: const EdgeInsets.all(14),
                  indicator: BoxDecoration(
                    color: AppColors.orange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ValueListenableBuilder<int>(
                  valueListenable: tabIndex,
                  builder: (ctx, index, child) {
                    return index == 0
                        ? _incomingsWidget()
                        : _outgoingsWidget();
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget _col({required String topString, required String bottomString}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(topString),
        const SizedBox(
          height: 12,
        ),
        Text(
          bottomString,
          style: AppTextStyle.header2Style,
        )
      ],
    );
  }

  Widget _incomingsWidget() {
    return _col(topString: "Saved in July", bottomString: "\$22,993.12");
  }

  Widget _outgoingsWidget() {
    return _col(topString: "Spent in July", bottomString: "\$11,384.11");
  }
}

import 'package:crypto_project/common_widgets/news_widget.dart';
import 'package:crypto_project/common_widgets/top_coins_widget.dart';
import 'package:flutter/material.dart';

class PriceGraph extends StatelessWidget {
  final String btcPrice;
  const PriceGraph({Key? key, required this.btcPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 364,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color(0xff5C90F4)),
              ),
              TopCoinsWidget(btcPrice: btcPrice),
              SizedBox(
                height: 35,
              ),
              NewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:crypto_project/common_widgets/news_widget.dart';
import 'package:crypto_project/common_widgets/top_coins_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xff5C90F4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Balance",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff494D58)),
                        ),
                        Text(
                          "\$18,368.11",
                          style: TextStyle(
                              fontSize: 36,
                              color: Color(0xff16171D),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Image.asset(
                                  width: 17,
                                  "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/Icon.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                "\$1,816",
                                style: TextStyle(
                                    color: Color(0xff16171D), fontSize: 16),
                              ),
                            ),
                            Text(
                              "Today's Profit",
                              style: TextStyle(
                                color: Color(0xff494D58),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                          "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/1.png"),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 68,
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                          "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/2.png"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TopCoinsWidget(),
              SizedBox(height: 20),
              NewsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

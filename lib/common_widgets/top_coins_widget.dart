import 'package:crypto_project/common_widgets/coin_widget.dart';
import 'package:crypto_project/providers/coin_prices_provider.dart';
import 'package:crypto_project/ui/ThirdPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopCoinsWidget extends StatelessWidget {
  const TopCoinsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Top coins",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffF5C249),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoinWidget(
                coinCode: context.watch<CoinPricesProvider>().btcName,
                coinPrice: context.watch<CoinPricesProvider>().btcPrice,
                coinImage:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
              ),
              Spacer(),
              CoinWidget(
                coinCode: context.watch<CoinPricesProvider>().ethName,
                coinPrice: context.watch<CoinPricesProvider>().ethPrice,
                coinImage: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

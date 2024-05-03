import 'package:crypto_project/common_widgets/my_price_widget.dart';
import 'package:crypto_project/providers/coin_prices_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopCoinsPage extends StatelessWidget {
  const TopCoinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        title: Text(
          "Top coins",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().btcPrice,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  coin_code: context.watch<CoinPricesProvider>().btcName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().ethPrice,
                  image: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
                  coin_code: context.watch<CoinPricesProvider>().ethName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().shibPrice,
                  image: "https://cryptologos.cc/logos/shiba-inu-shib-logo.png",
                  coin_code: context.watch<CoinPricesProvider>().shibName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().xrpPrice,
                  image: "https://cryptologos.cc/logos/xrp-xrp-logo.png",
                  coin_code: context.watch<CoinPricesProvider>().xrpName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().adaPrice,
                  image:
                      "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/cardano_ada-512.png",
                  coin_code: context.watch<CoinPricesProvider>().adaName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().btcPrice,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  coin_code: context.watch<CoinPricesProvider>().btcName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().btcPrice,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  coin_code: context.watch<CoinPricesProvider>().btcName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().btcPrice,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  coin_code: context.watch<CoinPricesProvider>().btcName),
              MyPriceWidget(
                  coin_price: context.watch<CoinPricesProvider>().btcPrice,
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  coin_code: context.watch<CoinPricesProvider>().btcName),
            ],
          ),
        ),
      ),
    );
  }
}

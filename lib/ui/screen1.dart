import 'dart:convert';
import 'dart:core';

// import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:crypto_project/common_widgets/my_price_widget.dart';
import 'package:crypto_project/ui/price_graph.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // String coin_priceBTC = "";
  // String coin_priceETH = "";
  // String coin_priceSHIB = "";
  // String coin_priceXRP = "";

  List<double> data = [];

  @override
  void initState() {
    // getData();
    super.initState();
    webSocketFunction();
  }

  String ethName = '';
  String ethPrice = '';

  String btcName = '';
  String btcPrice = '';

  String shibName = '';
  String shibPrice = '';

  String xrpName = '';
  String xrpPrice = '';

  webSocketFunction() async {
    final ethUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/ethusdt@trade');
    final btcUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@trade');
    final shibUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/shibusdt@trade');
    final xrpUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/xrpusdt@trade');
    final channelETH = WebSocketChannel.connect(ethUsdtURL);
    final channelBTC = WebSocketChannel.connect(btcUsdtURL);
    final channelSHIB = WebSocketChannel.connect(shibUsdtURL);
    final channelXRP = WebSocketChannel.connect(xrpUsdtURL);

    channelETH.stream.listen((message) {
      Map valueMap = json.decode(message);
      ethName = valueMap["s"];
      ethPrice = valueMap["p"];
      setState(() {});
    });
    channelBTC.stream.listen((message) {
      Map valueMap = json.decode(message);
      btcName = valueMap["s"];
      btcPrice = valueMap["p"];

      data.add(double.tryParse(btcPrice) ?? 0);

      setState(() {});
    });
    channelSHIB.stream.listen((message) {
      Map valueMap = json.decode(message);
      shibName = valueMap["s"];
      shibPrice = valueMap["p"];
      setState(() {});
    });
    channelXRP.stream.listen((message) {
      Map valueMap = json.decode(message);
      xrpName = valueMap["s"];
      xrpPrice = valueMap["p"];

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Text(ethName),
              // Text(ethPrice),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                    CardWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Charts",
                    style: TextStyle(color: Colors.red),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              Column(
                children: [
                  MyPriceWidget(
                    coin_code: btcName,
                    coin_price: btcPrice,
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                  ),
                  MyPriceWidget(
                    coin_code: ethName,
                    coin_price: ethPrice,
                    image: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
                  ),
                  MyPriceWidget(
                    coin_code: shibName,
                    coin_price: shibPrice,
                    image:
                        "https://cryptologos.cc/logos/shiba-inu-shib-logo.png",
                  ),
                  MyPriceWidget(
                    coin_code: xrpName,
                    coin_price: xrpPrice,
                    image: "https://cryptologos.cc/logos/xrp-xrp-logo.png",
                  ),
                  Column(
                    children: [
                      // Container(
                      //   width: double.infinity,
                      //   height: 250,
                      //   color: Colors.white,
                      //   child: Sparkline(
                      //     lineWidth: 2,
                      //     fillMode: FillMode.below,
                      //     fillColor: const Color.fromARGB(255, 255, 17, 0)
                      //         .withOpacity(0.40),
                      //     data: data,
                      //     useCubicSmoothing: true,
                      //     cubicSmoothingFactor: 1,
                      //     fillGradient: LinearGradient(
                      //       begin: Alignment.topCenter,
                      //       end: Alignment.bottomCenter,
                      //       colors: [
                      //         const Color.fromARGB(255, 255, 17, 0),
                      //         Colors.red.withOpacity(0.10)
                      //       ],
                      //     ),
                      //     pointsMode: PointsMode.last,
                      //     pointColor: const Color.fromARGB(255, 136, 0, 255),
                      //     pointSize: 10,
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PriceGraph(btcPrice: btcPrice)),
          );
        },
        child: const Icon(Icons.search),
      ),
    );
  }

  // Future<void> getData() async {
  //   final dio = Dio();
  //   final responseBTC = await dio.get(
  //       "https://min-api.cryptocompare.com/data/generateAvg?fsym=BTC&tsym=USD&e=coinbase");
  //   final responseETH = await dio.get(
  //       "https://min-api.cryptocompare.com/data/generateAvg?fsym=ETH&tsym=USD&e=coinbase");
  //   final responseSHIB = await dio.get(
  //       "https://min-api.cryptocompare.com/data/generateAvg?fsym=SHIB&tsym=USD&e=coinbase");
  //   final responseXRP = await dio.get(
  //       "https://min-api.cryptocompare.com/data/generateAvg?fsym=XRP&tsym=USD&e=coinbase");

  //   // print(response.data);
  //   coin_priceBTC = responseBTC.data["RAW"]["PRICE"];
  //   coin_priceETH = responseETH.data["RAW"]["PRICE"];
  //   coin_priceSHIB = responseSHIB.data["RAW"]["PRICE"];
  //   coin_priceXRP = responseXRP.data["RAW"]["PRICE"];
  //   // print(coin_priceBTC.toString());
  // }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 47, 38, 217).withOpacity(0.90),
                Color.fromARGB(178, 228, 22, 74).withOpacity(0.90),
                Color.fromARGB(255, 151, 47, 199).withOpacity(0.90),
              ],
              stops: const [
                0.10,
                0.25,
                0.80,
              ],
              transform: const GradientRotation(
                  0.4 * 3.14), // Rotate the gradient by 90 degrees (0.5 * pi)
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.red),
        height: 179,
        width: 312,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "\$43.000.77",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  const Spacer(),
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                    width: 30,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Your balance is equivalent",
                        style: TextStyle(color: Colors.white.withOpacity(0.70)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          height: 28,
                          width: 84,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              "Deposit",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28,
                        width: 93,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Withdraw",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

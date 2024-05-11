import 'dart:convert';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:crypto_project/second_design/comm_widgets/CircleButtonWidget.dart';
import 'package:crypto_project/second_design/comm_widgets/ReceiveAssetsWidget.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MoreInfoCoinPage extends StatefulWidget {
  const MoreInfoCoinPage(
      {super.key,
      required this.price,
      required this.coinCode,
      required this.coinInfo});

  final String price;
  final String coinCode;
  final String coinInfo;

  @override
  State<MoreInfoCoinPage> createState() => _MoreInfoCoinPageState();
}

class _MoreInfoCoinPageState extends State<MoreInfoCoinPage> {
  String btcPrice = '';
  List<double> data = [];
  @override
  void initState() {
    getBtcChart();
    super.initState();
  }

  void getBtcChart() async {
    final btcUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@trade');
    final btcUSDTchannel = WebSocketChannel.connect(btcUsdtURL);

    btcUSDTchannel.stream.listen((message) {
      Map valueMap = json.decode(message);
      btcPrice = valueMap["p"];

      data.add(double.tryParse(btcPrice) ?? 0);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 38),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff32353C),
                    child: Image.asset(
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/el.png"),
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0xff1B1D22),
                      width: 94,
                      height: 37,
                      child: Center(
                        child: Text(
                          "Watch",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 29),
              Text(
                "${widget.coinCode} Price",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.50),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.price,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 9),
              Text(
                "\$106.69 (6.75%)",
                style: TextStyle(
                    color: Color(0xff55AA79),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.transparent,
                child: Sparkline(
                  lineColor: Color(0xff687DE3),
                  lineWidth: 2,
                  fillMode: FillMode.below,
                  fillColor: const Color(0xff687DE3).withOpacity(0.40),
                  data: data,
                  useCubicSmoothing: true,
                  cubicSmoothingFactor: 1,
                  fillGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff687DE3),
                      Color(0xff687DE3).withOpacity(0.10)
                    ],
                  ),
                  pointsMode: PointsMode.last,
                  pointColor: const Color(0xff687DE3),
                  pointSize: 7,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  CircleButtonWidget(
                    func: () {},
                    image:
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_add-rounded.png",
                    text: "Buy",
                  ),
                  Spacer(),
                  Spacer(),
                  CircleButtonWidget(
                    func: () {},
                    image:
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_swap-calls-rounded.png",
                    text: "Swap",
                  ),
                  Spacer(),
                  Spacer(),
                  CircleButtonWidget(
                    func: () {},
                    text: "Bridge",
                    image:
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_swap-vert-rounded.png",
                  ),
                  Spacer(),
                  Spacer(),
                  CircleButtonWidget(
                    func: () {},
                    text: "Send",
                    image:
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_arrow-up.png",
                  ),
                  Spacer(),
                  Spacer(),
                  CircleButtonWidget(
                    func: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: 490,
                          color: Color(0xff1E2024),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24, horizontal: 23),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Receive assets",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 40),
                                ReceiveAssetsWidget(
                                  title: "Your Ethereum address",
                                  subtitle: "0xF09...67c484",
                                  circleImage:
                                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/el.png",
                                ),
                                SizedBox(height: 20),
                                ReceiveAssetsWidget(
                                  title: "Your Solana address",
                                  subtitle: "Fvp8...bQWBV",
                                  circleImage:
                                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/el.png",
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    text: "Receive",
                    image:
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_arrow-down.png",
                  ),
                ],
              ),
              SizedBox(height: 35),
              Text(
                "About coin",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                "${widget.coinInfo.substring(0, 220)}...",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.80),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              InkWell(
                onTap: () {},
                child: Text(
                  "View More",
                  style: TextStyle(
                      color: Color(0xff2D76F9),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

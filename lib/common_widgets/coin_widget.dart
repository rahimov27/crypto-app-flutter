import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class CoinWidget extends StatefulWidget {
  const CoinWidget(
      {Key? key,
      required this.coinCode,
      required this.coinPrice,
      required this.coinImage})
      : super(key: key);
  final String coinCode;
  final String coinPrice;
  final String coinImage;

  @override
  State<CoinWidget> createState() => _CoinWidgetState();
}

class _CoinWidgetState extends State<CoinWidget> {
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

      // data.add(double.tryParse(btcPrice) ?? 0);
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff282B35)),
          width: 180,
          height: 240,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      widget.coinImage,
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        widget.coinCode,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.coinPrice,
                  style: TextStyle(color: Color(0xffA7AEBF), fontSize: 18),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$24,55%",
                  style: TextStyle(color: Color(0xff00C566), fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  color: Colors.transparent,
                  child: Sparkline(
                    lineColor: Color(0xff00C566),
                    lineWidth: 2,
                    fillMode: FillMode.below,
                    fillColor:
                        const Color.fromARGB(255, 255, 17, 0).withOpacity(0.40),
                    data: data,
                    useCubicSmoothing: true,
                    cubicSmoothingFactor: 1,
                    fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 255, 17, 0),
                        Colors.red.withOpacity(0.10)
                      ],
                    ),
                    pointsMode: PointsMode.last,
                    pointColor: const Color.fromARGB(255, 0, 255, 149),
                    pointSize: 7,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

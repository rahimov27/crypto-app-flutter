import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class CoinPricesProvider extends ChangeNotifier {
  String ethName = '';
  String ethPrice = '';

  String btcName = '';
  String btcPrice = '';

  String shibName = '';
  String shibPrice = '';

  String xrpName = '';
  String xrpPrice = '';

  String adaName = '';
  String adaPrice = '';

  CoinPricesProvider() {
    webSocketFunction();
  }

  webSocketFunction() async {
    final ethUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/ethusdt@trade');
    final btcUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/btcusdt@trade');
    final shibUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/shibusdt@trade');
    final xrpUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/xrpusdt@trade');
    final adaUsdtURL =
        Uri.parse('wss://stream.binance.com:9443/ws/adausdt@trade');
    final channelETH = WebSocketChannel.connect(ethUsdtURL);
    final channelBTC = WebSocketChannel.connect(btcUsdtURL);
    final channelSHIB = WebSocketChannel.connect(shibUsdtURL);
    final channelXRP = WebSocketChannel.connect(xrpUsdtURL);
    final channelADA = WebSocketChannel.connect(adaUsdtURL);

    channelETH.stream.listen((message) {
      Map valueMap = json.decode(message);
      ethName = valueMap["s"];
      ethPrice = valueMap["p"];
      notifyListeners();
    });
    channelBTC.stream.listen((message) {
      Map valueMap = json.decode(message);
      btcName = valueMap["s"];
      btcPrice = valueMap["p"];
      notifyListeners();

      // data.add(double.tryParse(btcPrice) ?? 0);
    });
    channelSHIB.stream.listen((message) {
      Map valueMap = json.decode(message);
      shibName = valueMap["s"];
      shibPrice = valueMap["p"];
      notifyListeners();
    });
    channelXRP.stream.listen((message) {
      Map valueMap = json.decode(message);
      xrpName = valueMap["s"];
      xrpPrice = valueMap["p"];
      notifyListeners();
    });
    channelADA.stream.listen((message) {
      Map valueMap = json.decode(message);
      adaName = valueMap["s"];
      adaPrice = valueMap["p"];
      notifyListeners();
    });
  }
}

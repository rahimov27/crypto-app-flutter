import 'package:flutter/material.dart';

class MyPriceWidget extends StatelessWidget {
  const MyPriceWidget(
      {super.key,
      required this.coin_price,
      required this.image,
      required this.coin_code});

  final String coin_price;
  final String image;
  final String coin_code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        width: double.infinity,
        height: 84,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        // color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Image.network(width: 60, image),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coin_code,
                      style: TextStyle(fontSize: 16),
                    ),
                    const Text(
                      "1,6%",
                      style: TextStyle(fontSize: 15, color: Color(0xff9DA3B7)),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "\$$coin_price",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Text(
                        "2,73 BTC",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff9DA3B7)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

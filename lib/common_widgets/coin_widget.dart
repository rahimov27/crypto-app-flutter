import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff282B35)),
          width: 165,
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
                      coinImage,
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        coinCode,
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
                  coinPrice,
                  style: TextStyle(color: Color(0xffA7AEBF), fontSize: 18),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$24,55%", // Исправлено
                  style: TextStyle(color: Color(0xff00C566), fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 62,
                  width: 132,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

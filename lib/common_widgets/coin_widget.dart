import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
  final String btcPrice;
  const CoinWidget({Key? key, required this.btcPrice}) : super(key: key);

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
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/2048px-Bitcoin.svg.png",
                      height: 26,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text(
                        "Bitcoin",
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
                  btcPrice,
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

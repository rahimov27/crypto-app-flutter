import 'dart:ui';

import 'package:crypto_project/MoreInfoCoinPage.dart';
import 'package:flutter/material.dart';

class CoinLikeWidget extends StatelessWidget {
  const CoinLikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MoreInfoCoinPage()));
        },
        child: Container(
          width: 162,
          height: 154,
          decoration: BoxDecoration(
            color: Color(0xff18191D),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 21),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 17,
                  child: Image.asset(
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins/el.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        "BTC",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "\$23,772...",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.50),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                        "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/ph_arrow-up-right-duotone.png"),
                    Text(
                      "6.75%",
                      style: TextStyle(
                          color: Color(0xff55AA79),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

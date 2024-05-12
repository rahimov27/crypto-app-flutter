import 'package:flutter/material.dart';

class CoinLikeWidget extends StatelessWidget {
  const CoinLikeWidget(
      {super.key,
      required this.price,
      required this.coinCode,
      required this.iconURL});

  final String price;
  final String coinCode;
  final String iconURL;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 162,
        height: 170,
        decoration: BoxDecoration(
          color: Color(0xff18191D),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 17,
                backgroundColor: Colors.white,
                child: Image.network(iconURL),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      coinCode,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "\$${price}",
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
    );
  }
}

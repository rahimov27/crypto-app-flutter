
import 'package:crypto_project/common_widgets/coin_widget.dart';
import 'package:flutter/material.dart';

class TopCoinsWidget extends StatelessWidget {
  const TopCoinsWidget({
    super.key,
    required this.btcPrice,
  });

  final String btcPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Top coins",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffF5C249),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoinWidget(
                btcPrice: btcPrice,
              ),
              Spacer(),
              CoinWidget(
                btcPrice: btcPrice,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

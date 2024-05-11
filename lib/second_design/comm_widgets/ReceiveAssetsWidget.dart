

import 'package:flutter/material.dart';

class ReceiveAssetsWidget extends StatelessWidget {
  const ReceiveAssetsWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.circleImage,
  });

  final String title;
  final String subtitle;
  final String circleImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                      color: Color(0xff878C98),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 10,
                        child: Image.asset(circleImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 10,
                        child: Image.asset(circleImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 10,
                        child: Image.asset(circleImage),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 10,
                        child: Image.asset(circleImage),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xff32353C),
                child: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/carbon_qr-code.png"),
              ),
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xff32353C),
              child: Image.asset(
                  "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/material-symbols_content-copy-outline-rounded.png"),
            ),
          ],
        ),
      ),
      width: double.infinity,
      height: 118,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          width: 1,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wallets",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 39),
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wallet 1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 262,
                        child: Text(
                          "Manage your daap connections, theme color, and more",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  iconSize: 24,
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            SizedBox(
              height: 79,
            ),
            SettingsArrowWidget(
              text: "Add & manage wallets",
            ),
            SettingsArrowWidget(
              text: "Add & manage wallets",
            ),
            SettingsArrowWidget(
              text: "Show recovery phrase",
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              height: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "General",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SettingsArrowWidget(
              text: "Manage notifications",
            ),
            SettingsArrowWidget(
              text: "Coinbase account",
            ),
            SettingsArrowWidget(
              text: "Invite your friends",
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsArrowWidget extends StatelessWidget {
  const SettingsArrowWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        IconButton(
          iconSize: 24,
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}

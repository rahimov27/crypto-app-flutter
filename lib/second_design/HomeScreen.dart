import 'package:flutter/material.dart';
import 'package:crypto_project/second_design/widgets/ButtonWidget.dart';
import 'package:crypto_project/second_design/widgets/CircleButtonWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Wallet 1",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/material-symbols_content-copy-outline-rounded.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/uil_capture.png",
                    width: 30,
                    height: 30,
                  ),
                ),
                Image.asset(
                  "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/ph_bell.png",
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "USD 5,466.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                CircleButtonWidget(
                  func: () {},
                  image:
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_add-rounded.png",
                  text: "Buy",
                ),
                Spacer(),
                Spacer(),
                CircleButtonWidget(
                  func: () {},
                  image:
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_swap-calls-rounded.png",
                  text: "Swap",
                ),
                Spacer(),
                Spacer(),
                CircleButtonWidget(
                  func: () {},
                  text: "Bridge",
                  image:
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_swap-vert-rounded.png",
                ),
                Spacer(),
                Spacer(),
                CircleButtonWidget(
                  func: () {},
                  text: "Send",
                  image:
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_arrow-up.png",
                ),
                Spacer(),
                Spacer(),
                CircleButtonWidget(
                  func: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        height: 490,
                        color: Color(0xff1E2024),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 23),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Receive assets",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 40),
                              ReceiveAssetsWidget(
                                title: "Your Ethereum address",
                                subtitle: "0xF09...67c484",
                                circleImage:
                                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/el.png",
                              ),
                              SizedBox(height: 20),
                              ReceiveAssetsWidget(
                                title: "Your Solana address",
                                subtitle: "Fvp8...bQWBV",
                                circleImage:
                                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/el.png",
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  text: "Receive",
                  image:
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_arrow-down.png",
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: double.infinity,
              height: 35,
              color: Color(0xff030F30),
              child: Row(
                children: [
                  Image.asset(
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/add_user.png"),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Invite your friends",
                      style: TextStyle(
                          color: Color(0xff4671ED),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                buildNavButton(0, "Crypto"),
                SizedBox(width: 20),
                buildNavButton(1, "NFTs"),
                SizedBox(width: 20),
                buildNavButton(2, "DeFi"),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Image.asset(
                "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/home-1.png"),
            Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  "Add crypto to get started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "You can add funds with your Coinbase account or another wallet.",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Spacer(),
            LongButton(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavButton(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _selectedIndex == index ? Colors.blue : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedIndex == index ? Colors.blue : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

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

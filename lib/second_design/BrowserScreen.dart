import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({Key? key}) : super(key: key);

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [
      "BTC",
      "BTC",
      "BTC",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 218,
          height: 40,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "app.1inch.io/#/1/s..",
              style: TextStyle(color: Color(0xff707A83), fontSize: 14),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xff1B1D22)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 21),
          child: Row(
            children: [
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 12, // Adjust the size as needed
                    color: Colors.white,
                  ),
                ),
              ),
              Flexible(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 12, // Adjust the size as needed
                    color: Colors.white.withOpacity(0.50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/bitcoin-btc-logo.svg",
                  ),
                ),
                Spacer(),
                Container(
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff0F235F),
                    border: Border.all(color: Color(0xff0F235F), width: 1),
                  ),
                  child: DropdownButton<String>(
                    underline: SizedBox(),
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/bitcoin-btc-logo.svg",
                        ),
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ),
                    items: items.map(
                      (String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      },
                    ).toList(),
                    onChanged: (String? value) {
                      // Handle onChanged event
                    },
                  ),
                ),
                SizedBox(
                    width:
                        10), // Add some space between DropdownButton and ClipRRect
                ClipRRect(
                  child: Container(
                    width: 54,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset(
                            "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/bitcoin-btc-logo.svg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text(
                            "0",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Container(
              width: double.infinity,
              height: 475,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff141722),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 21, horizontal: 17),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Swap",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Limit",
                            style: TextStyle(
                                color: Color(0xff7185A9),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "P2P",
                            style: TextStyle(
                                color: Color(0xff7185A9),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.refresh,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        YouSellWidget(
                          borderColor: Colors.transparent,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        YouSellWidget(
                          borderColor: Colors.red,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "1 ETH = 0.699234 BTC (\$24,653.80)",
                          style:
                              TextStyle(color: Color(0xff707A83), fontSize: 12),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          height: 68,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color(0xff343F52),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            child: Text("Insufficient ETH balance",
                                style: TextStyle(
                                    color: Color(0xff707A83), fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YouSellWidget extends StatelessWidget {
  const YouSellWidget({
    super.key,
    required this.borderColor,
  });

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 111,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "You sell",
                  style: TextStyle(color: Color(0xff707A83), fontSize: 12),
                ),
                Spacer(),
                Text(
                  "Balance: 0 MAX",
                  style: TextStyle(color: Color(0xff707A83), fontSize: 12),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/coins-images/bitcoin-btc-logo.svg",
                    ),
                  ),
                ),
                Text(
                  "ETH",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Ethereum",
                  style: TextStyle(color: Color(0xff707A83), fontSize: 12),
                ),
                Spacer(),
                Text(
                  "~ \$1 688.23",
                  style: TextStyle(color: Color(0xff707A83), fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

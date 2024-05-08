import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              SizedBox(height: 20),
              Row(
                children: [
                  buildNavButton(0, "Crypto"),
                  SizedBox(width: 20),
                  buildNavButton(1, "NFTs"),
                  SizedBox(width: 20),
                  buildNavButton(2, "DeFi"),
                ],
              ),
              SizedBox(height: 34),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff18191D),
                ),
                width: double.infinity,
                height: 117,
                child: Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create a watchlist",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 200,
                            child: Text(
                              "Get price alerts and stay up to date",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.50),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                          "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/IMG_5630.png"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 33),
              Text(
                "Coins you might like",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                  ],
                ),
              ),
              SizedBox(height: 23),
              Text(
                "Coins you might like",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                  ],
                ),
              ),
              SizedBox(height: 23),
              Text(
                "Coins you might like",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 9),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                    CoinLikeWidget(),
                  ],
                ),
              ),
            ],
          ),
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

class CoinLikeWidget extends StatelessWidget {
  const CoinLikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
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
    );
  }
}

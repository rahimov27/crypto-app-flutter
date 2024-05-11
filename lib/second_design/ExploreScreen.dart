import 'package:crypto_project/second_design/widgets/CoinLikeWidget.dart';
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

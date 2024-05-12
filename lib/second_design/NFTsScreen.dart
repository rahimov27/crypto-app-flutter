import 'package:flutter/material.dart';

class NFTsScreen extends StatelessWidget {
  const NFTsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 700,
            width: double.infinity,
            color: Colors.red,
            padding:
                EdgeInsets.symmetric(vertical: 20), // Add padding as needed
            child: Center(
              child: Text(
                "NFTs Content",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

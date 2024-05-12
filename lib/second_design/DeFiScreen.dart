import 'package:flutter/material.dart';

class DeFiScreen extends StatelessWidget {
  const DeFiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 700,
            width: double.infinity,
            color: Colors.blue,
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

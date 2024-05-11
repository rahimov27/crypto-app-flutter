import 'package:crypto_project/second_design/FirstPages/Splash3.dart';
import 'package:flutter/material.dart';

class Splash2 extends StatelessWidget {
  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/Splash/Rectangle2.png"),
              SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  "Trade,send, and store crypto and NFTs",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 46),
              SizedBox(
                width: double.infinity,
                height: 68,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Splash3(),
                      ),
                    );
                  },
                  child: Text(
                    'Create new wallet',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 31),
              TextButton(
                onPressed: () {},
                child: Text(
                  'I already have a wallet',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

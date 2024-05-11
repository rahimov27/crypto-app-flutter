import 'dart:ui';

import 'package:crypto_project/second_design/SecurityPages/SecurityPage2.dart';
import 'package:flutter/material.dart';

class SecurityPage1 extends StatelessWidget {
  const SecurityPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.50),
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 46),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Back up your wallet",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Your secret recovery phrase is used to recover your crypto if your phone or switch to a different wallet. \n\n\nSave these 12 words in a secure location, such as a password manager, and never share them with anyone.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 27,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 114,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your secret recovery phrase is used to recover your crypto if your phone or switch to a different wallet.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 114,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        width: double.infinity,
                        height: 114,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.copy,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Copy to clipboard",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecurityPage2(),
                        ),
                      );
                    },
                    child: Text(
                      'Back up on iCloud',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff32353C)),
                    onPressed: () {},
                    child: Text(
                      'Back up manually',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

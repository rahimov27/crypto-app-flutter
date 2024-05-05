import 'package:crypto_project/resources/resources.dart';
import 'package:crypto_project/ui/NewsPage.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "News",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewsPage()));
              },
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Color(0xffF5C249),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 22,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff21242D)),
          width: 364,
          height: 133,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Image(
                  image: AssetImage(Images.first),
                  height: 99,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 180,
                    child: Text(
                      textAlign: TextAlign.left,
                      "Analysts project 32% upside for Coinbase stock despite... ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text("Finbold",
                      style: TextStyle(
                          color: Color(0xffF5C249),
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

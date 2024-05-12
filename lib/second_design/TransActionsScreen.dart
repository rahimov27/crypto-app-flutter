import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransActionsScreen extends StatelessWidget {
  const TransActionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.send),
                        radius: 25,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 21),
                              child: Text(
                                "To              ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              "1N5EJwqM......8wB6g9V8jFJ",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.50),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 21),
                              child: Text(
                                "Network",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              "TRC20",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.50),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 21),
                              child: Text(
                                "Amount  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              "1.000054 BTC (\$60.345)",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.50),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff18191D)),
            )
          ],
        ),
      ),
    );
  }
}

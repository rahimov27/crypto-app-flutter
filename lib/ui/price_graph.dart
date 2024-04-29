import 'package:flutter/material.dart';

class PriceGraph extends StatelessWidget {
  const PriceGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home_filled),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.money),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.currency_bitcoin),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bar_chart),
            ),
          ],
        ),
      ),
    );
  }
}

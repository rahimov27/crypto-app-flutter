import 'package:crypto_project/ui/home_page.dart';
import 'package:crypto_project/ui/price_page.dart';
import 'package:crypto_project/ui/settings_page.dart';
import 'package:crypto_project/ui/top_coins_page.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({Key? key}) : super(key: key);

  @override
  State<PagesScreen> createState() => _MyNavState();
}

class _MyNavState extends State<PagesScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Screen1(),
    PriceGraph(),
    TopCoinsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[currentIndex],
      bottomNavigationBar: FloatingNavbar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
      ),
    );
  }
}

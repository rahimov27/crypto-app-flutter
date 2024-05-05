import 'package:crypto_project/ui/FirstPage.dart';
import 'package:crypto_project/ui/SecondPage.dart';
import 'package:crypto_project/ui/FourPage.dart';
import 'package:crypto_project/ui/ThirdPage.dart';
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
    FirstPage(),
    SecondPage(),
    ThirdPage(),
    FourPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

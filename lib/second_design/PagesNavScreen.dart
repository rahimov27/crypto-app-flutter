import 'package:crypto_project/second_design/BrowserScreen.dart';
import 'package:crypto_project/second_design/ExploreScreen.dart';
import 'package:crypto_project/second_design/HomeScreen.dart';
import 'package:crypto_project/second_design/SettingsPage.dart';
import 'package:flutter/material.dart';

class PagesNavScreen extends StatefulWidget {
  const PagesNavScreen({super.key});

  @override
  State<PagesNavScreen> createState() => _PagesNavScreenState();
}

class _PagesNavScreenState extends State<PagesNavScreen> {
  int _currentIndex = 0;

  List<Widget> widgets = [
    HomeScreen(),
    ExploreScreen(),
    BrowserScreen(),
    ExploreScreen(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            _currentIndex = value;
            setState(() {});
          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xff2D76F9),
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/raphael_piechart.png"),
                label: "Assets"),
            BottomNavigationBarItem(
                icon: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_list-box-outline.png"),
                label: "Transactions"),
            BottomNavigationBarItem(
                icon: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/mdi_web.png"),
                label: "Browser"),
            BottomNavigationBarItem(
                icon: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_search-rounded.png"),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Image.asset(
                    "/Users/r27/StudioProjects/crypto-app/crypto_project/assets/images/icons/material-symbols_settings-outline-rounded.png"),
                label: "Settings"),
          ],
        ),
      ),
    );
  }
}

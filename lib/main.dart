import 'package:crypto_project/providers/coin_prices_provider.dart';
import 'package:crypto_project/providers/news_provider.dart';
import 'package:crypto_project/second_design/FirstPages/Splash1.dart';
import 'package:crypto_project/second_design/FirstPages/Splash3.dart';
import 'package:crypto_project/second_design/HomeScreen.dart';
import 'package:crypto_project/second_design/PagesNavScreen.dart';
import 'package:crypto_project/second_design/SecurityPages/SecurityPage1.dart';
import 'package:crypto_project/second_design/SecurityPages/SecurityPage2.dart';
import 'package:crypto_project/second_design/SecurityPages/SecurityPage3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CoinPricesProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => NewsProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color(0xff16171D)),
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor:
              Color(0xff0B0A0F), // Use Google Fonts text theme
        ),
        // home: OnboardingScreen(),
        // home: HomeScreen(),
        // home: PagesNavScreen(),
        home: PagesNavScreen(),
      ),
    );
  }
}

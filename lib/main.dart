import 'package:crypto_project/providers/coin_prices_provider.dart';
import 'package:crypto_project/ui/welcome_page.dart';
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
    return ChangeNotifierProvider(
      create: (context) => CoinPricesProvider(),
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color(0xff16171D)),
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor:
              Color(0xff16171D), // Use Google Fonts text theme
        ),
        home: OnboardingScreen(),
      ),
    );
  }
}

import 'package:crypto_project/resources/resources.dart';
import 'package:crypto_project/ui/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const FirstPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color(0xff16171D),
      skipStyle: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: 17,
          )),
          foregroundColor: MaterialStateProperty.all(Color(0xffF5C249))),
      allowImplicitScrolling: true,
      autoScrollDuration: 300000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              const Image(
                image: AssetImage(Images.first),
              ),
              SizedBox(
                height: 230,
              ),
              Container(
                child: Text(
                  'Welcome to Foxcrypto',
                  style: GoogleFonts.poppins(
                    fontSize: 35.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              const Image(
                image: AssetImage(Images.second),
              ),
              SizedBox(
                height: 230,
              ),
              Container(
                child: Text(
                  'Transaction Security',
                  style: GoogleFonts.poppins(
                    fontSize: 35.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            children: [
              const Image(
                image: AssetImage(Images.third),
              ),
              SizedBox(
                height: 230,
              ),
              Container(
                child: Text(
                  'Fast and reliable Market updated',
                  style: GoogleFonts.poppins(
                    fontSize: 35.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      // onChange: (val) {},
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward,
      ),
      done: const Text('Done',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xffF5C249))),
      onDone: () => _onIntroEnd(context),
      nextStyle: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Color(0xffF5C249))),
      dotsDecorator: const DotsDecorator(
        size: Size.square(9),
        activeColor: Color(0xffF5C249),
        activeSize: Size.square(17),
      ),
    );
  }
}

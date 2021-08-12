import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_animation/theme.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 15,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Test Lottie Animation',
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 432,
              child: LottieBuilder.asset(
                'assets/brain_bulb.json',
                controller: controller,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Brain Bulb Charging',
              style: GoogleFonts.poppins(),
            ),
            TextButton(
              onPressed: () {
                controller.forward();
              },
              style: TextButton.styleFrom(
                backgroundColor: backgroundColor1,
              ),
              child: Text(
                'Play Animation',
                style: primaryTextStyle.copyWith(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

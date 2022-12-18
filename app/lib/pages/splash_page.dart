import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/started', (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff5C40CC),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/logo.png',
              height: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'A I R P L A N E',
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 32),
            ),
          ]),
        ));
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Fly Like a Bird",
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Explore new world with us and let\nyourself get an amazing experiences",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 220,
              height: 55,
              decoration: BoxDecoration(
                  color: Color(0xff5C40CC),
                  borderRadius: BorderRadius.circular(17.0)),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/signup', (route) => false);
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}

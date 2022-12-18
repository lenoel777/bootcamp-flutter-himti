import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 151,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/saldocard.png',
                      ),
                      fit: BoxFit.fitHeight),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3F32B2).withOpacity(.5),
                      offset: Offset(
                        0,
                        77.0,
                      ),
                      blurRadius: 40.0,
                      spreadRadius: -70.0,
                    )
                  ]),
              //isi
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 72, top: 24, right: 72, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            Text(
                              'Kezia Anne',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/logo.png',
                              height: 24,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Pay',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(),
                        Text(
                          'Balance',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        Text(
                          'IDR 280.000.000',
                          style: GoogleFonts.poppins(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 91,
            ),
            Text(
              'Big Bonus 🎉',
              style: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff9698A9)),
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
                      context, '/home', (route) => false);
                },
                child: Text(
                  'Start Fly Now',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

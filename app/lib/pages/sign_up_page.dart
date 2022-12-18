import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          children: [
            SizedBox(
              height: 72,
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Join us and get\nyour next journey',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff1F1449)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 533,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //1
                    Text(
                      'Full Name',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 55,
                      width: 287,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(color: Color(0xff5C40CC), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 14),
                        child: Text(
                          'Kezia Ann|',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //2
                    Text(
                      'Email Address',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 55,
                      width: 287,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(color: Color(0xffDBD7EC), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 14),
                        child: Text(
                          'ekarifqi1@gmail.com',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //3
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 55,
                      width: 287,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(color: Color(0xffDBD7EC), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 14),
                        child: Text(
                          '',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //4
                    Text(
                      'Hobby',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      height: 55,
                      width: 287,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        border: Border.all(color: Color(0xffDBD7EC), width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 14),
                        child: Text(
                          'Photographer',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      width: 287,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Color(0xff5C40CC),
                          borderRadius: BorderRadius.circular(17.0)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, '/bonussaldo', (route) => false);
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
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Terms and Conditions',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff9698A9),
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}

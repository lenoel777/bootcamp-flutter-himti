import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScroll2 extends StatelessWidget {
  final String? imgurl;
  final String? title;
  final String? desc;
  final String? rate;

  const CustomScroll2({this.imgurl, this.title, this.desc, this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 327,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    imgurl!,
                    width: 70,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff1F1449)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        desc!,
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff9698A9)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/Star.png',
                    width: 19,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    rate!,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff1F1449)),
                  ),
                  SizedBox(
                    width: 4,
                  )
                ],
              )
            ]),
      ),
    );
  }
}

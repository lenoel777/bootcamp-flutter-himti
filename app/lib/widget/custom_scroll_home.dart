import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScrollHome extends StatelessWidget {
  final String? imgurl;
  final String? title;
  final String? desc;

  const CustomScrollHome({this.imgurl, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 323,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            imgurl!,
            width: 180,
          ),
          SizedBox(
            height: 20,
          ),
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
        ]),
      ),
    );
  }
}

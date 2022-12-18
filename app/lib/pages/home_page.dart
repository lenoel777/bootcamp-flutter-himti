import 'package:app/widget/custom_scroll_home.dart';
import 'package:app/widget/scroll2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget HorizontalScroll() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [
              CustomScrollHome(
                imgurl: 'assets/cover.png',
                title: 'Lake Ciliwung',
                desc: 'Tangerang',
              ),
              SizedBox(
                width: 24,
              ),
              CustomScrollHome(
                imgurl: 'assets/cover (1).png',
                title: 'White Houses',
                desc: 'Spain',
              ),
              SizedBox(
                width: 24,
              ),
              CustomScrollHome(
                imgurl: 'assets/cover (2).png',
                title: 'Hill Heyo',
                desc: 'Monaco',
              ),
              SizedBox(
                width: 24,
              ),
              CustomScrollHome(
                imgurl: 'assets/cover (3).png',
                title: 'Menarra',
                desc: 'Japan',
              ),
              SizedBox(
                width: 24,
              ),
              CustomScrollHome(
                imgurl: 'assets/cover (4).png',
                title: 'Payung Teduh',
                desc: 'Singapore',
              ),
            ],
          ),
        ),
      );
    }

    Widget VerticalScroll() {
      return Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                CustomScroll2(
                    imgurl: 'assets/vert.png',
                    title: 'Danau Beratan',
                    desc: 'Singaraja',
                    rate: '4.5'),
                CustomScroll2(
                    imgurl: 'assets/vert (1).png',
                    title: 'Sydney Opera',
                    desc: 'Australia',
                    rate: '4.7'),
                CustomScroll2(
                    imgurl: 'assets/vert (2).png',
                    title: 'Roma',
                    desc: 'Italy',
                    rate: '4.8'),
                CustomScroll2(
                    imgurl: 'assets/vert (3).png',
                    title: 'Payung Teduh',
                    desc: 'Singapore',
                    rate: '4.5'),
                CustomScroll2(
                    imgurl: 'assets/vert (4).png',
                    title: 'Hill Hey',
                    desc: 'Monaco',
                    rate: '4.7'),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 72,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Howdy,\nKezia Anne',
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff1F1449)),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/pic.png',
                  height: 50,
                ),
              ],
            ),
            Text(
              'Where to fly today?',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff9698A9)),
            ),
            SizedBox(
              height: 30,
            ),
            HorizontalScroll(),
            SizedBox(
              height: 30,
            ),
            Text(
              'New This Year',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff1F1449)),
            ),
            SizedBox(
              height: 16,
            ),
            VerticalScroll(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.language,
              size: 24,
              color: Color(0xff5C40CC),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_library_outlined,
              size: 24,
              color: Color(0xff9698A9),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.credit_card,
              size: 24,
              color: Color(0xff9698A9),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 24,
              color: Color(0xff9698A9),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

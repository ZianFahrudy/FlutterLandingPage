import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          // NOTE: HEADER
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 100, right: 100, top: 35, bottom: 80),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        children: [
                          navBarItem(index: 0, title: "Guide"),
                          SizedBox(
                            width: 20,
                          ),
                          navBarItem(index: 1, title: "Pricing"),
                          SizedBox(
                            width: 20,
                          ),
                          navBarItem(index: 2, title: "Team"),
                          SizedBox(
                            width: 20,
                          ),
                          navBarItem(index: 3, title: "Stories"),
                        ],
                      ),
                      Image.asset(
                        'btn.png',
                        width: 163,
                        height: 53,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'illustration.png',
                  width: 550,
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'arrow-icon.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget navBarItem({required int index, required String title}) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    selectedIndex == index ? FontWeight.w500 : FontWeight.w300),
          ),
          Container(
            width: 66,
            height: 2,
            decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color(0xffFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8)),
          ),
        ],
      ),
    );
  }
}

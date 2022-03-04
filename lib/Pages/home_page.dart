import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/favorite_page.dart';
import 'package:suka_baca/Pages/search_page.dart';
import 'package:suka_baca/Pages/tambahrangkuman_page.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      HomePage(),
      FavoritePage(),
      SearchPage(),
    ];

    return Scaffold(
      backgroundColor: whiteColor,
      // ALTERNATIF PAKAI APP BAR
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 8,
      //       vertical: 0,
      //     ),
      //     child: Text(
      //       "SukaBaca",
      //       style: semiBlackBoldTextStyle.copyWith(fontSize: 24),
      //     ),
      //   ),
      //   backgroundColor: whiteColor,
      //   elevation: 0,
      // ),

      //ERROR
      // body: Container(
      //   color: whiteColor,
      //   child: IndexedStack(
      //     index: selectedIndex,
      //     children: tabs,
      //   ),
      // ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: blackColor,
        unselectedItemColor: whiteColor,
        selectedItemColor: whiteColor,
        selectedLabelStyle: TextStyle(
          color: Color(0xff263238),
        ),
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 26,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 26,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 26,
            ),
            label: "Search",
          ),
        ],
      ),
    );
  }
}

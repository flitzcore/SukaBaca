import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/favorite_page.dart';
import 'package:suka_baca/Pages/main_page.dart';
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
    final screens = [
      MainPage(),
      FavoritePage(),
      SearchPage(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          color: whiteColor,
          child: IndexedStack(
            index: selectedIndex,
            children: screens,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: blackColor,
          unselectedItemColor: whiteColor,
          selectedItemColor: whiteColor,
          selectedLabelStyle: TextStyle(
            color: Color(0xff000000),
          ),
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: (index) => setState(() => selectedIndex = index),
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
      ),
    );
  }
}

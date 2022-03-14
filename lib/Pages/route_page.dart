import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/favorite_page.dart';
import 'package:suka_baca/Pages/main_page.dart';
import 'package:suka_baca/Pages/search_page.dart';
import 'package:suka_baca/Pages/tambahrangkuman_page.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suka_baca/Widget/dashboard.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  int selectedIndex = 0;
  final screens = [
    MainPage(),
    FavoritePage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: screens,
        ),
        backgroundColor: whiteColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TambahRangkumanPage(),
            ),
          ),
          child: Icon(Icons.add),
          elevation: 0,
          backgroundColor: blackColor,
          // shape: Border.all(width: 2, color: whiteColor),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
        bottomNavigationBar: DashboardWidget(
          index: selectedIndex,
          onChangedTab: onChangedTab,
        ),
      ),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.selectedIndex = index;
    });
  }
}

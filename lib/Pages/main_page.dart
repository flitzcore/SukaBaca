import 'package:flutter/material.dart';

import '../Utility/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 0,
          ),
          child: Text(
            "SukaBaca",
            style: semiWhiteBoldTextStyle.copyWith(fontSize: 24),
          ),
        ),
        backgroundColor: Color(0xff000000),
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
            child: Text(
              "Rangkumanmu",
              style: semiBlackBoldTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

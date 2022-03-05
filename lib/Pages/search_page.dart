import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      body: Container(
        child: Text(
          "Search Page",
          style: semiBlackBoldTextStyle,
        ),
      ),
    );
  }
}

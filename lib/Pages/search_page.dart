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
    return Container(
      child: Text(
        "Search Page",
        style: semiBlackBoldTextStyle,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
          "Favorite Page",
          style: semiBlackBoldTextStyle,
        ),
      ),
    );
  }
}

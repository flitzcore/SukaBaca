import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';

import '../Widget/rangkuman_card.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "SukaBaca",
              style: semiBlackBoldTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Favoritmu",
              style: semiBlackBoldTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RangkumanCard(
              isFavorite: true,
            ),
            SizedBox(
              height: 30,
            ),
            RangkumanCard(
              isFavorite: true,
            ),
            SizedBox(
              height: 30,
            ),
            RangkumanCard(
              isFavorite: true,
            ),
            SizedBox(
              height: 30,
            ),
            RangkumanCard(
              isFavorite: true,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

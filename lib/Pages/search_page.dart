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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
            TextField(
              style: TextStyle(
                color: greyColor,
              ),
              decoration: InputDecoration(
                fillColor: greyColor,
                focusColor: greyColor,
                suffixIcon: Icon(Icons.search),
                suffixIconColor: greyColor,
                hintText: "Search",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: blackColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: blackColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

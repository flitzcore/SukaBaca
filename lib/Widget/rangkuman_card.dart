import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:suka_baca/Widget/genre_widget.dart';
import 'package:suka_baca/Widget/progress_widget.dart';

class RangkumanCard extends StatefulWidget {
  final bool isFavorite;

  RangkumanCard({Key? key, this.isFavorite = false}) : super(key: key);

  @override
  State<RangkumanCard> createState() => _RangkumanCardState();
}

class _RangkumanCardState extends State<RangkumanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 10,
          right: 1,
        ),
        child: Row(
          children: [
            Container(
              width: 61,
              height: 93,
              color: blackColor,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Guy Kawasaki",
                  style: semiBlackBoldTextStyle,
                ),
                Text(
                  "by Alexander Nato",
                  style: lightTextStyle,
                ),
                GenreWidget(),
                SizedBox(
                  height: 5,
                ),
                ProgressWidget(),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite,
                  color: widget.isFavorite ? redColor : whiteColor,
                ),
                SizedBox(
                  height: 20,
                ),
                IconButton(
                  // splashColor: Colors.transparent,
                  // highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

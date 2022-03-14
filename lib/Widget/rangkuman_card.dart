import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:suka_baca/Widget/genre_widget.dart';
import 'package:suka_baca/Widget/progress_widget.dart';

class RangkumanCard extends StatefulWidget {
  final String judul;
  final String nama_pengarang;
  final bool onProgress;
  final bool isFavorite;

  RangkumanCard({Key? key,required this.isFavorite, required this.nama_pengarang, required this.judul,required this.onProgress}) : super(key: key);

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
                  widget.judul,
                  style: semiBlackBoldTextStyle,
                ),
                Text(
                  "by ${widget.nama_pengarang}",
                  style: lightTextStyle,
                ),
                Row(
                  children: [
                    romansa,
                    SizedBox(
                      width: 5,
                    ),
                    horror,
                    SizedBox(
                      width: 5,
                    ),
                    thriller,
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                on_progress,
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

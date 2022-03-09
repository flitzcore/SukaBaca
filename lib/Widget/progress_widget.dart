import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';

class ProgressWidget extends StatelessWidget {
  final bool isDone = false;

  // ProgressWidget({Key? key, required isDone}) : super(key: key);

  final on_progress = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: whiteColor,
      border: Border.all(
        width: 2,
        color: blackColor,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      child: Row(
        children: [
          Text(
            "On Progress",
            style: mediumBlackTextSTyle.copyWith(
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.timer,
            size: 16,
            color: yellowColor,
          ),
        ],
      ),
    ),
  );

  final selesai = Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: whiteColor,
      border: Border.all(
        width: 2,
        color: blackColor,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      child: Row(
        children: [
          Text(
            "Selesai",
            style: mediumBlackTextSTyle.copyWith(
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.check,
            size: 16,
            color: greeenColor,
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          on_progress,
        ],
      ),
    );
  }
}

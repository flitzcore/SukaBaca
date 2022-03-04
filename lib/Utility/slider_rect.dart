import 'package:flutter/material.dart';

class SliderBar extends StatelessWidget {
  int pages;
  int pagesIndex;
  SliderBar({Key? key,required this.pages, required this.pagesIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: List.generate(pages, (index) =>
          Container(
          margin: const EdgeInsets.only(bottom: 2),
          width: 8,
          height: (index==pagesIndex)?25:8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withAlpha((index==pagesIndex)?255:90),

          ),
        )
        ),
      ),
    );
  }
}




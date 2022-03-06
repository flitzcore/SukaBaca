import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kumpulan_text.dart';


class Button1 extends StatelessWidget {
  final String text;
  double? width;
  Button1({Key? key, this.width=150,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
      child: TextButton(
        onPressed:(){},
        child: LargeText(text: this.text,size: 20,color:Colors.white),
      ),
    );
  }
}

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
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        border: Border.all(
          color: Colors.blueAccent,
          width: 2
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            child: BodyText(text: this.text,size: 20,color:Colors.blueAccent),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/button_1.dart';
import 'package:suka_baca/Utility/slider_rect.dart';


class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  _WelcomePagesState createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  @override
  List img=[
    "welcomepage_1.jpg",
    "welcomepage_2.jpg",
    "welcomepage_3.jpg"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/image/"+img[index]
                      ),
                      fit: BoxFit.cover,
                      filterQuality:FilterQuality.high
                  ),
              ),

              child: Container(
                width: 500,
                margin: const EdgeInsets.only(top:100,right:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    if(index==2)Container(
                      child:Button1(text: "Lanjutkan"),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 20,bottom: 20),
                    ),
                    Column(
                      children: [
                        SliderBar(pages: img.length,pagesIndex: index),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

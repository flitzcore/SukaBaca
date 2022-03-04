import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/button_1.dart';
import 'package:suka_baca/Utility/kumpulan_text.dart';
import 'package:suka_baca/Utility/slider_rect.dart';


class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  _WelcomePagesState createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  @override
  List img=[
    "welcomepage_1.png",
    "welcomepage_2.png",
    "welcomepage_3.png"
  ];
  List textBold=[
    "Buku adalah Jendela Ilmu",
    "Catat Setiap Hal Penting",
    "Kemudahan Merangkum Buku Kesukaanmu"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (_,index){
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: LargeText(text: textBold[index]),
                ),
                Container(
                  width: double.maxFinite-10,
                  height: MediaQuery.of(context).size.width-10,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/img/"+img[index]
                        ),
                        fit: BoxFit.contain,
                        filterQuality:FilterQuality.high
                    ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[SliderBar(pages: img.length,pagesIndex: index)]
                ),
              ],
            );
          }),
    );
  }
}
/*return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/img/"+img[index]
                      ),
                      fit: BoxFit.cover,
                      filterQuality:FilterQuality.high
                  ),
              ),

              child: Container(
                width: 500,
                margin: const EdgeInsets.only(top:100,right:20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
            */

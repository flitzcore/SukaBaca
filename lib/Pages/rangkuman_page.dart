import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/tambahrangkuman_page.dart';

import '../Utility/theme.dart';
import '../Widget/genre_widget.dart';
import '../Widget/progress_widget.dart';

class RangkumanPage extends StatefulWidget {
  final int rid;
  const RangkumanPage({
    Key? key,
    required this.rid,
  }) : super(key: key);

  @override
  State<RangkumanPage> createState() => _RangkumanPageState();
}

class _RangkumanPageState extends State<RangkumanPage> {
  final itemsGenre = [
    horror,
    petualangan,
    pengenalanDiri,
    komedi,
    romansa,
    fiksi,
    thriller,
    misteri,
  ];

  final itemsProgress = [
    on_progress,
    selesai,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.favorite,
                    size: 25,
                    color: redColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 3),
                    color: whiteColor),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guy Kawasaki",
                        style: semiBlackBoldTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "by Alexander Nato",
                        style: lightTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          romansa,
                          SizedBox(
                            width: 5,
                          ),
                          komedi,
                          SizedBox(
                            width: 5,
                          ),
                          pengenalanDiri,
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          on_progress,
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Risus et a nam at quis mauris posuere tellus. Non turpis vel massa, sodales. Venenatis, turpis vel egestas diam id. Volutpat id sagittis, nisl sed euismod tempus. Pharetra, massa velit, lorem mauris amet.",
                        style: regularBlackTextSTyle.copyWith(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Risus et a nam at quis mauris posuere tellus. Non turpis vel massa, sodales. Venenatis, turpis vel egestas diam id. Volutpat id sagittis, nisl sed euismod tempus. Pharetra, massa velit, lorem mauris amet.",
                        style: regularBlackTextSTyle.copyWith(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Risus et a nam at quis mauris posuere tellus. Non turpis vel massa, sodales. Venenatis, turpis vel egestas diam id. Volutpat id sagittis, nisl sed euismod tempus. Pharetra, massa velit, lorem mauris amet.",
                        style: regularBlackTextSTyle.copyWith(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blackColor),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TambahRangkumanPage(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                        ),
                        child: Text(
                          "Edit",
                          style: semiWhiteBoldTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(redColor),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                      ),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: Text(
                            "Hapus Rangkuman?",
                            style: semiBlackBoldTextStyle,
                          ),
                          content: SingleChildScrollView(
                            child: ListBody(children: [
                              Text(
                                "Rangkuman ini akan dihapus secara permanen. Pastikan anda yakin ingin menghapus rangkuman ini.",
                                style: regularBlackTextSTyle.copyWith(
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ]),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Ya",
                                style: mediumBlackTextSTyle.copyWith(),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Tidak",
                                style: mediumBlackTextSTyle.copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                        ),
                        child: Text(
                          "Hapus",
                          style: semiWhiteBoldTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

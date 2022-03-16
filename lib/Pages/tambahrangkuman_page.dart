import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:suka_baca/Widget/genre_widget.dart';
import 'package:suka_baca/Widget/progress_widget.dart';

class TambahRangkumanPage extends StatefulWidget {
  const TambahRangkumanPage({Key? key}) : super(key: key);

  @override
  State<TambahRangkumanPage> createState() => _TambahRangkumanPageState();
}

class _TambahRangkumanPageState extends State<TambahRangkumanPage> {
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

  Container? valueGenre;
  Container? valueProgress;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
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
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 25,
                      color: isFavorite ? redColor : greyColor,
                    ),
                  ),
                ],
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
                  hintText: "Judul - Penulis",
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
              SizedBox(
                height: 30,
              ),
              Container(
                width: 120,
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: blackColor,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<Container>(
                    value: valueGenre,
                    isExpanded: true,
                    items: itemsGenre.map(buildItem).toList(),
                    onChanged: (value) => setState(
                      () => this.valueGenre = value,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 120,
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: blackColor,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<Container>(
                    value: valueProgress,
                    isExpanded: false,
                    items: itemsProgress.map(buildItem).toList(),
                    onChanged: (value) => setState(
                      () => this.valueProgress = value,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                maxLines: null,
                style: TextStyle(
                  color: greyColor,
                ),
                decoration: InputDecoration(
                  fillColor: greyColor,
                  focusColor: greyColor,
                  hintText: "Rangkuman",
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
              SizedBox(
                height: 160,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(blackColor),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 6,
                  ),
                  child: Text(
                    "Simpan",
                    style: semiWhiteBoldTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<Container> buildItem(Container item) => DropdownMenuItem(
        value: item,
        child: Container(child: item),
      );
}

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

  // Container? valueGenre;
  // Container? valueProgress;

  bool isFavorite = false;
  bool isHorror = false;
  bool isPetualangan = false;
  bool isPengenalanDiri = false;
  bool isKomedi = false;
  bool isRomansa = false;
  bool isFiksi = false;
  bool isThriller = false;
  bool isMisteri = false;

  bool isSelesai = false;
  bool isOnProgress = false;

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
                  hintStyle: lightTextStyle,
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
              // Container(
              //   width: 120,
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 24,
              //   ),
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       width: 2,
              //       color: blackColor,
              //     ),
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              //   child: DropdownButtonHideUnderline(
              //     child: DropdownButton<Container>(
              //       value: valueGenre,
              //       isExpanded: true,
              //       items: itemsGenre.map(buildItem).toList(),
              //       onChanged: (value) => setState(
              //         () => this.valueGenre = value,
              //       ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: blackColor,
                        width: 3,
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenreSelector(
                          genre: horror,
                          checkValue: isHorror,
                          onChecked: (_isHorror) {
                            setState(() {
                              isHorror = _isHorror;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: petualangan,
                          checkValue: isPetualangan,
                          onChecked: (_isPetualangan) {
                            setState(() {
                              isPetualangan = _isPetualangan;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: pengenalanDiri,
                          checkValue: isPengenalanDiri,
                          onChecked: (_isPengenalanDiri) {
                            setState(() {
                              isPengenalanDiri = _isPengenalanDiri;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: komedi,
                          checkValue: isKomedi,
                          onChecked: (_isKomedi) {
                            setState(() {
                              isKomedi = _isKomedi;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: romansa,
                          checkValue: isRomansa,
                          onChecked: (_isRomansa) {
                            setState(() {
                              isRomansa = isRomansa;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: fiksi,
                          checkValue: isFiksi,
                          onChecked: (_isFiksi) {
                            setState(() {
                              isFiksi = _isFiksi;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: thriller,
                          checkValue: isThriller,
                          onChecked: (_isThriller) {
                            setState(() {
                              isThriller = _isThriller;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: misteri,
                          checkValue: isHorror,
                          onChecked: (_isMisteri) {
                            setState(() {
                              isMisteri = _isMisteri;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Genre",
                      style: lightTextStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: greyColor,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(whiteColor),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: blackColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   width: 120,
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 24,
              //   ),
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       width: 2,
              //       color: blackColor,
              //     ),
              //     borderRadius: BorderRadius.circular(12),
              //   ),
              //   child: DropdownButtonHideUnderline(
              //     child: DropdownButton<Container>(
              //       value: valueProgress,
              //       isExpanded: false,
              //       items: itemsProgress.map(buildItem).toList(),
              //       onChanged: (value) => setState(
              //         () => this.valueProgress = value,
              //       ),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: blackColor,
                        width: 3,
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenreSelector(
                          genre: on_progress,
                          checkValue: isOnProgress,
                          onChecked: (_isOnProgress) {
                            setState(() {
                              isOnProgress = _isOnProgress;
                            });
                          },
                        ),
                        GenreSelector(
                          genre: selesai,
                          checkValue: isSelesai,
                          onChecked: (_isSelesai) {
                            setState(() {
                              isSelesai = _isSelesai;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Status",
                      style: lightTextStyle,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: greyColor,
                    ),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(whiteColor),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: blackColor,
                        width: 2,
                      ),
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
                  hintStyle: lightTextStyle.copyWith(),
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
              //TEST
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

class GenreSelector extends StatefulWidget {
  const GenreSelector({
    Key? key,
    required this.genre,
    required this.checkValue,
    required this.onChecked,
  }) : super(key: key);

  final Widget genre;
  final Function(bool) onChecked;
  final bool checkValue;

  @override
  State<GenreSelector> createState() => _GenreSelectorState();
}

class _GenreSelectorState extends State<GenreSelector> {
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.checkValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.genre,
        Checkbox(
          side: BorderSide(
            color: blackColor,
            width: 2,
          ),
          activeColor: blackColor,
          shape: const CircleBorder(),
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
              widget.onChecked(isChecked);
            });
          },
        ),
      ],
    );
  }
}

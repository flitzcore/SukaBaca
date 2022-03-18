import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/main_page.dart';
import 'package:suka_baca/Pages/rangkuman_page.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:suka_baca/Widget/genre_widget.dart';
import 'package:suka_baca/Widget/progress_widget.dart';

class RangkumanCard extends StatefulWidget {
  final int id;
  final String judul;
  final String nama_pengarang;
  final bool onProgress;
  final bool isFavorite;
//genre
  final bool horror;
  final bool petualangan;
  final bool pengenalan_diri;
  final bool komedi;
  final bool romansa;
  final bool fiksi;
  final bool thriller;
  final bool misteri;


  RangkumanCard(
      {Key? key,
        required this.id,
        required this.isFavorite,
        required this.nama_pengarang,
        required this.judul,
        required this.onProgress,
        //genre
        required this.horror,
        required this.petualangan,
        required this.pengenalan_diri,
        required this.komedi,
        required this.romansa,
        required this.fiksi,
        required this.thriller,
        required this.misteri
      })
      : super(key: key);

  @override
  State<RangkumanCard> createState() => _RangkumanCardState();
}

class _RangkumanCardState extends State<RangkumanCard> {
  List<Widget> genre=[];
  void fillGenre(){
    genre.clear();
    genre.add(SizedBox());
    if(widget.horror)genre.add(horror);
    if(widget.petualangan)genre.add(petualangan);
    if(widget.pengenalan_diri)genre.add(pengenalanDiri);
    if(widget.komedi)genre.add(komedi);
    if(widget.romansa)genre.add(romansa);
    if(widget.fiksi)genre.add(fiksi);
    if(widget.thriller)genre.add(thriller);
    if(widget.misteri)genre.add(misteri);
  }

  @override
  Widget build(BuildContext context) {
    fillGenre();
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
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
                    children: genre
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  widget.onProgress?on_progress:selesai,
                ],
              ),
              Spacer(),
              Expanded(
                child: Column(
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RangkumanPage(rid: widget.id,),
                          ),
                        );

                      },
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/search_page.dart';
import 'package:suka_baca/Widget/genre_widget.dart';
import 'package:suka_baca/Widget/progress_widget.dart';
import 'package:suka_baca/Widget/rangkuman_card.dart';
import 'package:suka_baca/database/rangkuman.dart';
import 'package:suka_baca/database/rangkuman_database.dart';
import '../Utility/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Rangkuman> rangkuman;
  bool isLoading =false;
  bool add=false;

  Future addData()async{
    for(int i=0;i<rangkuman.length;i++){
      await RangkumanDatabase.instance.delete(i);
    }
    final r1= Rangkuman(onProgress: true, nama_pengarang: "Orang lain", favorit: false, deskripsi: "dksd", judul: "Buku ini");
    final r2= Rangkuman(onProgress: true, nama_pengarang: "Farid", favorit: true, deskripsi: "dksd", judul: "Buku 3 ini");
    await RangkumanDatabase.instance.create(r1);
    await RangkumanDatabase.instance.create(r2);
    add=true;
    refreshList();

  }
  void initState(){
    super.initState();
    refreshList();
  }
  Future refreshList()async{
    setState(()=>isLoading = true);
    this.rangkuman=await RangkumanDatabase.instance.readAll();
    setState(()=>isLoading = false);
  }
  @override

  Widget build(BuildContext context) {
    if(add==false)addData();

    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "SukaBaca",
              style: semiBlackBoldTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // TextField(

            Text(
              "Rangkumanmu",
              style: semiBlackBoldTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child:
            ListView.builder(itemCount: rangkuman.length,itemBuilder: (context, index) {

              return RangkumanCard(
                  isFavorite: rangkuman[index].favorit,
                  nama_pengarang: rangkuman[index].nama_pengarang,
                  judul: rangkuman[index].judul,
                  onProgress: rangkuman[index].onProgress);
            })
            )
          ],
        ),
      ),
    );
  }
}

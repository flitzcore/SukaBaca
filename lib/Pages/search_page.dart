import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';
import 'package:suka_baca/Widget/rangkuman_card.dart';
import 'package:suka_baca/database/rangkuman.dart';
import 'package:suka_baca/database/rangkuman_database.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late List<Rangkuman> rangkuman;
  String query = '';
  bool isLoading = false;

  void initState() {
    super.initState();
    refreshList();
  }

  Future refreshList() async {
    setState(() => isLoading = true);
    this.rangkuman = await RangkumanDatabase.instance.readAll();
    setState(() => isLoading = false);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
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
            TextField(

              style: TextStyle(
                color: greyColor,
              ),
              decoration: InputDecoration(
                fillColor: greyColor,
                focusColor: greyColor,
                suffixIcon: Icon(Icons.search),
                suffixIconColor: greyColor,
                hintText: "Search",
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
              onChanged: (query){
                searchBook(query);
              },
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: rangkuman.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        RangkumanCard(
                          id: rangkuman[index].id!,
                          isFavorite: rangkuman[index].favorit,
                          nama_pengarang: rangkuman[index].nama_pengarang,
                          img_path: rangkuman[index].image_path,
                          judul: rangkuman[index].judul,
                          onProgress: rangkuman[index].onProgress,
                          horror: rangkuman[index].horror,
                          petualangan: rangkuman[index].petualangan,
                          pengenalan_diri: rangkuman[index].pengenalan_diri,
                          komedi: rangkuman[index].komedi,
                          romansa: rangkuman[index].romansa,
                          fiksi: rangkuman[index].fiksi,
                          thriller: rangkuman[index].thriller,
                          misteri: rangkuman[index].misteri,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    );
                  }),
            )

          ],
        ),
      )),
    );
  }
  void searchBook(String query) {
    print("query: ${query}");
    final books = rangkuman.where((book) {
      final titleLower = book.judul.toLowerCase();
      final authorLower = book.nama_pengarang.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();
  //  print(books);
    setState(() {
      this.query = query;
      this.rangkuman = books;

    });
  }
}

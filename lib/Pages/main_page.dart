import 'package:flutter/material.dart';
import 'package:suka_baca/Pages/search_page.dart';
import 'package:suka_baca/Utility/kumpulan_text.dart';
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

  bool isLoading = false;
  bool add = false;

  Future addData() async {
    for (int i = 0; i < rangkuman.length; i++) {
      await RangkumanDatabase.instance.delete(i);
    }
    final r1 = Rangkuman(
        onProgress: true,
        nama_pengarang: "Orang lain",
        favorit: false,
        deskripsi: "Annotations have no effect on the meaning of a Dart program. This annotation is recognized by the Dart analyzer, and it allows the analyzer to provide hints or warnings for some potential problems of an otherwise valid program. As such, the meaning of this annotation is defined by the Dart analyzer.The @override annotation expresses the intent that a declaration should override an interface method, something which is not visible from the declaration itself. This extra information allows the analyzer to provide a warning when that intent is not satisfied, where a member is intended to override a superclass member or implement an interface member, but fails to do so. Such a situation can arise if a member name is mistyped, or if the superclass renames the member.The @override annotation applies to instance methods, instance getters, instance setters and instance variables (fields). When applied to an instance variable, it means that the variable's implicit getter and setter (if any) are marked as overriding. It has no effect on the variable itself.Further lints can be used to enable more warnings based on @override annotations.",
        judul: "Buku ini",
        horror: true,
        misteri: true
    );
    final r2 = Rangkuman(
        onProgress: true,
        nama_pengarang: "Farid",
        favorit: true,
        deskripsi: "Kata-kata Cinta Romantis Buat Pasangan, Pacar, Kekasih, Keluarga – Gramedians akan merayakan hari jadian? Si dia ulang tahun? Atau hanya sekedar merayakan saat istimewa untuk cinta? Tidak ada yang lebih baik dari kutipan atau quotes tentang cinta yang cantik untuk menyertai kartu ucapan.Kamu bisa mengambill dari kata-kata mutiara yang pernah diucapkan oleh tokoh terkenal, kutipan dari buku atau sumber apapun yang pernah kita baca bertahun lampau, papan reklame, iklan di televisi, radio, atau internet, lirik lagu favorit, ucapan si dia yang mengena di hati, atau bahkan kata bijak karangan Gramedian sendiri.",
        judul: "Buku 3 ini",
        romansa: true
    );
    final r3 = Rangkuman(
        onProgress: true,
        nama_pengarang: "Fariddsf",
        favorit: true,
        deskripsi: "Tak mudah untuk mendefinisikan cinta secara pasti. Apalagi kalau menyangkut cinta sejati. Namun pastinya semua orang pernah mengetahui apa rasanya cinta dan kapan mereka akan merasakan hal ini.Cinta bisa diungkapkan pada siapa saja dan kapan saja. Tak perlu kata-kata rumit untuk mengungkapkannya. Dengan kata-kata cinta sederhana tapi bermakna perasaanmu sudah dapat terwakilkan.Untuk mengungkapkan perasaan cinta memang banyak caranya, namun sesuatu yang mampu menyentuh hati adalah dengan kata-kata cinta sejati. Nggak hanya terdengar indah, kalimat penuh makna ini mampu membuat siapa saja yang membacanya merasa bahagia, tenang dan merasa mendapatkan kepastian di hati seseorang.Kata-kata cinta sejati memiliki makna sebagai kasih sayang yang tulus kepada seseorang. Bagaimana kamu memandangnya dan meyakinkannya adalah salah salah satu reaksi perasaan cinta. Ini juga dapat diartikan sebagai kegembiraan melihat, menyentuh dan merasakan makhluk yang dicintai dengan penuh ketulusan cinta dengan seluruh indera.Selain memiliki makna mendalam, kata-kata cinta sejati tidak jarang juga mampu sedikit mengobati rasa sakit hati. Sebab, dalam kata-kata cinta sejati terdapat pesan yang dalam tentang makna cinta dan bagaimana menyikapi cinta itu sendiri.",
        judul: "Buku 3 ini",
        romansa: true,
      pengenalan_diri: true,
      horror: true,
    );
    await RangkumanDatabase.instance.create(r1);
    await RangkumanDatabase.instance.create(r2);
    await RangkumanDatabase.instance.create(r3);
    add = true;
    refreshList();
  }

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
  //if (add == false) addData();

    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: isLoading?Center(child: CircularProgressIndicator()):
            rangkuman.isEmpty?Column(
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
                BodyText(text: "Belum ada rangkuman, Ayo mulai menambahkan.."),
              ],
            ):
        Column(
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
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: rangkuman.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        RangkumanCard(
                          id: index+1,
                          isFavorite: rangkuman[index].favorit,
                          nama_pengarang: rangkuman[index].nama_pengarang,
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
                          height: 20,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

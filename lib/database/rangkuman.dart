final String tableRangkuman = 'rangkuman';
class RangkumanFields{
  static final List<String> values = [
    id,favorit,judul,deskripsi
  ];
  static final String id='_id';
  static final String favorit='favorit';
  static final String judul='judul';
  static final String deskripsi='deskripsi';
  static final String nama_pengarang='author';
  static final String on_progress='onprogress';
}
class Rangkuman {
  final int? id;
  final bool favorit;
  final bool onProgress;
  final String nama_pengarang;
  final String judul;
  final String deskripsi;

  const Rangkuman({
    this.id,
    required this.onProgress,
    required this.nama_pengarang,
    required this.favorit,
    required this.deskripsi,
    required this.judul
});
  Rangkuman copy({
    int? id,
    bool? favorit,
    bool? onProgress,
    String? nama_pengarang,
    String? judul,
    String? deskripsi,
})=>Rangkuman(
      id: id ?? this.id,
      favorit: favorit ?? this.favorit,
      onProgress: onProgress ?? this.onProgress,
      nama_pengarang: nama_pengarang ?? this.nama_pengarang,
      deskripsi: deskripsi ?? this.deskripsi,
      judul: judul ?? this.judul);
  static  Rangkuman fromJson(Map<String, Object?>json)=>Rangkuman(
      id: json[RangkumanFields.id] as int?,
      favorit: json[RangkumanFields.favorit] == 1,
      onProgress: json[RangkumanFields.on_progress] == 1,
      nama_pengarang: json[RangkumanFields.nama_pengarang] as String,
      deskripsi: json[RangkumanFields.deskripsi] as String,
      judul: json[RangkumanFields.judul] as String);
  Map <String, Object?> toJson()=>{
    RangkumanFields.id: id,
    RangkumanFields.favorit: favorit ? 1:0,
    RangkumanFields.on_progress: onProgress ? 1:0,
    RangkumanFields.nama_pengarang: nama_pengarang,
    RangkumanFields.judul: judul,
    RangkumanFields.deskripsi: deskripsi

  };
}
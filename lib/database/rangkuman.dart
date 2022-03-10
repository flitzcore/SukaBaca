final String tableRangkuman = 'rangkuman';
class RangkumanFields{
  static final List<String> values = [
    id,favorit,judul,deskripsi
  ];
  static final String id='_id';
  static final String favorit='favorit';
  static final String judul='judul';
  static final String deskripsi='deskripsi';
}
class Rangkuman {
  final int? id;
  final bool favorit;
  final String judul;
  final String deskripsi;

  const Rangkuman({
    this.id,
    required this.favorit,
    required this.deskripsi,
    required this.judul
});
  Rangkuman copy({
    int? id,
    bool? favorit,
    String? judul,
    String? deskripsi,
})=>Rangkuman(
      id: id ?? this.id,
      favorit: favorit ?? this.favorit,
      deskripsi: deskripsi ?? this.deskripsi,
      judul: judul ?? this.judul);
  static  Rangkuman fromJson(Map<String, Object?>json)=>Rangkuman(
      id: json[RangkumanFields.id] as int?,
      favorit: json[RangkumanFields.favorit] == 1,
      deskripsi: json[RangkumanFields.deskripsi] as String,
      judul: json[RangkumanFields.deskripsi] as String);
  Map <String, Object?> toJson()=>{
    RangkumanFields.id: id,
    RangkumanFields.favorit: favorit ? 1:0,
    RangkumanFields.judul: judul,
    RangkumanFields.deskripsi: deskripsi

  };
}
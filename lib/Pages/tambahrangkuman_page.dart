import 'package:flutter/material.dart';
import 'package:suka_baca/Utility/theme.dart';

class TambahRangkumanPage extends StatefulWidget {
  const TambahRangkumanPage({Key? key}) : super(key: key);

  @override
  State<TambahRangkumanPage> createState() => _TambahRangkumanPageState();
}

class _TambahRangkumanPageState extends State<TambahRangkumanPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Tambah Rangkuman Page",
        style: semiBlackBoldTextStyle,
      ),
    );
  }
}

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
    return Scaffold(
      body: SafeArea(
        child: ListView(physics: BouncingScrollPhysics(), children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 20,
                ),
              ),
              Spacer(),
            ],
          )
        ]),
      ),
    );
  }
}

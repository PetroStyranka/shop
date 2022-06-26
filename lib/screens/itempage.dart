import 'package:flutter/material.dart';
import 'package:shop/widgets/itemappbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(children: [
        ItemAppBar(),
        Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset("assets/itemimages/1.webp"))
      ]),
    );
  }
}

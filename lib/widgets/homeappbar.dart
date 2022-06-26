import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        Icon(Icons.sort, size: 30, color: Colors.black),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Sneaker shop",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Spacer(),
        Badge(
          badgeColor: Colors.red,
          padding: EdgeInsets.all(7),
          badgeContent: Text(
            "3",
            style: TextStyle(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(Icons.shopping_bag_outlined, size: 35),
          ),
        )
      ]),
    );
  }
}

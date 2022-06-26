import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/categories.dart';
import 'package:shop/widgets/homeappbar.dart';
import 'package:shop/widgets/items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 69, 68, 68),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 280,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search"),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, size: 30, color: Colors.black)
                ]),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              CategoriesWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              ItemsWidget(),
            ]),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {},
        color: Colors.grey,
        height: 70,
        backgroundColor: Colors.transparent,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.red,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.red,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

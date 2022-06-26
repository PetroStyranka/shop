import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.7,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 5; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "-50",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.red),
                  ],
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "ItemPage");
                    },
                    child: Container(
                      //margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/itemimages/$i.webp",
                        height: 120,
                        width: 120,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Title",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("description"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$255",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                        Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.red,
                        )
                      ]),
                ),
              ],
            ),
          )
      ],
    );
  }
}

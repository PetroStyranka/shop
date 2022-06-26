import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      for (int i = 1; i < 4; i++)
        Container(
          height: 150,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Colors.red,
                  onChanged: (index) {}),
              Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(right: 15),
                child: Image.asset("assets/itemimages/$i.webp"),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Title",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "\$255",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.add_circled,
                                    size: 18,
                                  ),
                                ),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    )),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.minus_circle,
                                    size: 18,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
    ]);
  }
}

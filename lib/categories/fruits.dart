import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Fruits extends StatefulWidget {
  @override
  _FruitsState createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHomeScreenBackgroundColor,
      child: GridView.count(
        childAspectRatio: 2.0,
        crossAxisCount:
        MediaQuery.of(context).orientation == Orientation.portrait ? 1 : 2,
        children: List.generate(
          kFruitsList.length,
              (index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    String itemName = kFruitsList[index]['name'];
    String itemImage = kFruitsList[index]['iconPath'];

    return Container(
      height: 192.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: kCardItemBackgroundColor,
                    borderRadius: BorderRadius.circular(24.0),
                    boxShadow: kShadowList,
                  ),
                  margin: EdgeInsets.only(top: 56.0),
                ),
                Align(
                  child: Image.asset(itemImage),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if(list.contains(itemName)) {
                    list.remove(itemName);
                  } else {
                    list.add(itemName);
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.only(top: 72, bottom: 16.0),
                decoration: BoxDecoration(
                  color: list.contains(itemName) ? kCardSelectedColorV : kCardUnselectedColorV,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                  ),
                  boxShadow: kShadowList,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    itemName,
                    style: GoogleFonts.giveYouGlory(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: list.contains(itemName)
                            ? kCardSelectedTextColorV
                            : kCardUnselectedTextColorV,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
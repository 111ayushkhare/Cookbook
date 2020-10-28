import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/colors.dart';

class Veggies extends StatefulWidget {
  @override
  _VeggiesState createState() => _VeggiesState();
}

class _VeggiesState extends State<Veggies> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHomeScreenBackgroundColor,
      child: ListView.builder(
        itemCount: kVegetablesList.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    String itemName = kVegetablesList[index]['name'];
    String itemImage = kVegetablesList[index]['iconPath'];

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
                margin: EdgeInsets.only(top: 72, bottom: 24.0),
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
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      color: list.contains(itemName) ? kCardSelectedTextColorV : kCardUnselectedTextColorV,
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
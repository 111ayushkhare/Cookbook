import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xff283655);
Color kHomeScreenBackgroundColor = Colors.white;
Color kCardItemBackgroundColor = Color(0xffB2DBD5);

Color kCardUnselectedColorV = Colors.white;
Color kCardUnselectedTextColorV = Colors.black;
Color kCardSelectedColorV = Color(0xff1E1F26);
Color kCardSelectedTextColorV = Colors.white;

Color kCardUnselectedColorF = Colors.white;
Color kCardUnselectedTextColorF= Colors.black;
Color kCardSelectedColorF = Color(0xff1E1F26);
Color kCardSelectedTextColorF = Colors.white;

Color kCardColorV = kCardUnselectedColorV;
Color kCardTextColorV = kCardUnselectedTextColorV;

Color kCardColorF = kCardUnselectedColorF;
Color kCardTextColorF = kCardUnselectedTextColorF;

Color kBottomNavigationColor = Color(0xffFFA577);

List<BoxShadow> kShadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 24.0,
    offset: Offset(0, 10),
  ),
];

var kVegetablesList = [
  {'name': 'Paneer', 'iconPath' : 'images/vegetables/paneer.png'},
  {'name': 'Chhole', 'iconPath' : 'images/vegetables/chhole.png'},
  {'name': 'Potato', 'iconPath' : 'images/vegetables/potato.png'},
  {'name': 'Pepper', 'iconPath' : 'images/vegetables/pepper.png'},
  {'name': 'Pumpkin', 'iconPath' : 'images/vegetables/pumpkin.png'},
  {'name': 'Cabbage', 'iconPath' : 'images/vegetables/cabbage.png'},
  {'name': 'Broccoli', 'iconPath' : 'images/vegetables/broccoli.png'},
  {'name': 'Cauliflower', 'iconPath' : 'images/vegetables/cauliflower.png'},
  {'name': 'Spinach', 'iconPath' : 'images/vegetables/spinach.png'},
];

var kFruitsList = [
  {'name': 'Papaya', 'iconPath' : 'images/fruits/papaya.png'},
  {'name': 'Brinjal', 'iconPath' : 'images/fruits/brinjal.png'},
  {'name': 'Tomato', 'iconPath' : 'images/fruits/tomato.png'},
  {'name': 'Mango', 'iconPath' : 'images/fruits/mango.png'},
  {'name': 'Banana', 'iconPath' : 'images/fruits/banana.png'},
];

// var map = [
//   {
//     "Paneer" : ['Shahi Paneer', 'Palak Paneer', 'Panner Butter Masala', 'Paneer Mutter'],
//   },
//   {
//     "Chhole" : ['Chhola', 'Chhola Paneer'],
//   },
// ];
import 'package:flutter/material.dart';

import 'package:cookbook/res/colors.dart';

import 'package:cookbook/screens/home_screen.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/screens/results.dart';
import 'package:cookbook/screens/drawer/settings.dart';
import 'package:cookbook/screens/drawer/favorite_dishes.dart';
import 'package:cookbook/screens/drawer/about_app.dart';
import 'package:cookbook/screens/drawer/about_developers.dart';
import 'package:cookbook/screens/drawer/profile.dart';
import 'package:cookbook/screens/drawer/freq_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen': (context) => HomeScreen(),
        'BasketScreen': (context) => Basket(),
        'ResultScreen': (context) => Results(),
        'ProfileScreen': (context) => Profile(),
        'FreqItemsScreen': (context) => FreqItems(),
        'FavoriteDishesScreen': (context) => FavoriteDishes(),
        'SettingsScreen': (context) => Settings(),
        'AboutAppScreen': (context) => AboutApp(),
        'AboutDevelopersScreen': (context) => AboutDev(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
    );
  }
}

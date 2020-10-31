import 'package:cookbook/screens/about_app.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/screens/home_screen.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/colors.dart';
import 'package:cookbook/screens/settings.dart';
import 'package:cookbook/screens/favorite_dishes.dart';
import 'package:cookbook/screens/about_developers.dart';
import 'package:cookbook/screens/profile.dart';
import 'package:cookbook/screens/freq_items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'HomeScreen',
      routes: {
        'HomeScreen' : (context) => HomeScreen(),
        'BasketScreen' : (context) => Basket(),
        'ResultScreen' : (context) => Results(),
        'ProfileScreen' : (context) => Profile(),
        'FreqItemsScreen' : (context) => FreqItems(),
        'FavoriteDishesScreen' : (context) => FavoriteDishes(),
        'SettingsScreen' : (context) => Settings(),
        'AboutAppScreen' : (context) => AboutApp(),
        'AboutDevelopersScreen' : (context) => AboutDev(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
    );
  }
}
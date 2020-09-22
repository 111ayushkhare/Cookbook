import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/screens/home_screen.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/constants.dart';

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
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
    );
  }
}

//2B616D

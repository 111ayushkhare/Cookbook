import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';

List<String> list = List();

class Basket extends StatefulWidget {
  String itemName;

  Basket({this.itemName});

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basket'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: list.map((element) => Text(element)).toList(),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Results(available: list,)));
          },
          label: Text(
            'Go!',
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
          backgroundColor: kBottomNavigationColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

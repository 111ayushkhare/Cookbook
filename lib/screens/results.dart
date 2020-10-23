import 'package:flutter/material.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';

class Results extends StatefulWidget {
  List<String> available;

  Results({this.available});

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<String> resultDishes = List<String>();

  @override
  void initState() {
    setState(() {
      print(widget.available);
      for (int i = 0; i < widget.available.length; i++) {
        if (mp.containsKey(widget.available[i])) {
          print(mp[widget.available]);
          // for (int j = 0; j < mp[widget.available].length; j++) {
          //   print(mp[widget.available][j]);
          //   resultDishes.add(mp[widget.available][j]);
          // }

          mp[widget.available[i]].forEach((element) {
            print(element);
            resultDishes.add(element);
          });
        }
      }
      // if (mp.containsKey(widget.available.elementAt(0))) {
      //   resultDishes.add(mp[widget.available.elementAt(0)]);
      //   print(widget.available.elementAt(0));
      // }
      // mp.forEach((key, value) {
      //   print('k: $key , v: $value' );
      // });
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dishes You Can COOK'),
        ),
        body: ListView(
          shrinkWrap: true,
          children: resultDishes.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}

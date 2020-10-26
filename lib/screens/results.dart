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

          mp[widget.available[i]].forEach((element) {
            print(element);
            if (!resultDishes.contains(element)) {
              resultDishes.add(element);
            }
          });
        }
      }
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
        body: ListView.builder(
          itemCount: resultDishes.length,
          itemBuilder: (context, index) {
            return ResultTile(dishName: resultDishes[index],);
          },
          // shrinkWrap: true,
          // children: resultDishes.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}

class ResultTile extends StatefulWidget {
  final String dishName;

  ResultTile({this.dishName});

  @override
  _ResultTileState createState() => _ResultTileState();
}

class _ResultTileState extends State<ResultTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            color: Colors.blue[50],
            child: ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text(widget.dishName),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/colors.dart';

class Results extends StatefulWidget {
  Set<String> available;

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
        if (mp.containsKey(widget.available.elementAt(i))) {
          print(mp[widget.available]);

          mp[widget.available.elementAt(i)].forEach((element) {
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
            return ResultCard(
              dishName: resultDishes[index],
            );
          },
          // shrinkWrap: true,
          // children: resultDishes.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}

class ResultCard extends StatefulWidget {
  String dishName;

  ResultCard({this.dishName});

  @override
  _ResultCardState createState() => _ResultCardState();
}

class _ResultCardState extends State<ResultCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              height: 144.0,
              child: Image(
                width: 200.0,
                image: NetworkImage('https://www.indianhealthyrecipes.com/wp-content/uploads/2016/03/kadai-paneer-1.jpg'),
              ),
            ),
          ),
          Text(
            widget.dishName,
            textAlign: TextAlign.left,
          ),
          Text('Milk Product'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_downward,
                  color: kPrimaryColor,
                ),
                onPressed: () {},
                color: kHomeScreenBackgroundColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

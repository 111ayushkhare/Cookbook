import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/colors.dart';
import 'package:flutter/rendering.dart';

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
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Dishes You Can COOK',),
          centerTitle: true,
          elevation: 8.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.reply),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          color: Color(0xffebfbff),
          //margin: EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 0.70,
            children: List.generate(
              resultDishes.length,
              (index) => ResultCard(
                dishName: resultDishes[index],
              ),
            ),
          ),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: kPrimaryColor, width: 1.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            //margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: kHomeScreenBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    alignment: Alignment.center,
                    child: Image.asset('images/vegetables/bhindi.png'),
                  ),
                  flex: 5,
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 8.0,
                          bottom: 4.0,
                          top: 32.0,
                        ),
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Flexible(
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 4.0),
                          child: Text(widget.dishName.toUpperCase()),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.0,
                          ),
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                bottomRight: Radius.circular(32.0),
                              )),
                          child: Text(
                            'Get Recipe',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// CircleAvatar(
// radius: 56.0,
// child: Image.asset('images/fruits/mango.png'),
// ),

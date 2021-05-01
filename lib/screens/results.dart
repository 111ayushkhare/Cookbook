import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:cookbook/constants.dart';
import 'package:cookbook/res/colors.dart';
import 'package:cookbook/screens/drawer/favorite_dishes.dart';

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
          title: Text(
            'Dishes You Can COOK',
            style: GoogleFonts.handlee(
                textStyle: TextStyle(fontWeight: FontWeight.w500),
                fontSize: 24.0),
          ),
          centerTitle: true,
          elevation: 8.0,
        ),
        body: Container(
          child: GridView.count(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 2
                    : 1,
            childAspectRatio: 1.75,
            children: List.generate(
              resultDishes.length,
              (index) => ResultCard(
                dishName: resultDishes[index],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.pushNamed(context, 'HomeScreen');
                  }),
              IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    Navigator.pushNamed(context, 'FavoriteDishesScreen');
                  }),
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: kBottomNavigationColor,
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
  Image dishImage;

  @override
  Widget build(BuildContext context) {
    dishImage = kDishImageMap[widget.dishName];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        elevation: 4.0,
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xffdcf5f5),
                  child: dishImage,
                  alignment: Alignment.center,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: kHomeScreenBackgroundColor,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            child: Text(
                              widget.dishName,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.satisfy(
                                  textStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: kPrimaryColor,
                        indent: 48.0,
                        endIndent: 48.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(48.0)),
                              ),
                              child: IconButton(
                                icon: favoriteDishes.contains(widget.dishName)
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: kPrimaryColor,
                                      ),
                                onPressed: () {
                                  setState(() {
                                    if (favoriteDishes
                                        .contains(widget.dishName)) {
                                      favoriteDishes.remove(widget.dishName);
                                    } else {
                                      favoriteDishes.add(widget.dishName);
                                    }
                                  });
                                },
                              ),
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(16.0)),
                              ),
                              child: Text('Get Recipe',
                                  style: GoogleFonts.josefinSlab(
                                      textStyle: TextStyle(fontSize: 16.0))),
                              elevation: 4.0,
                              textColor: kHomeScreenBackgroundColor,
                              color: kPrimaryColor,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

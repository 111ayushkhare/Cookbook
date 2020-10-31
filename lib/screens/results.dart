import 'package:cookbook/screens/favorite_dishes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/colors.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

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
            style: GoogleFonts.handlee(textStyle: TextStyle(fontWeight: FontWeight.w500), fontSize: 24.0),
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
                  icon: Icon(Icons.arrow_back),
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
  @override
  Widget build(BuildContext context) {
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
                              style: GoogleFonts.satisfy(textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
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
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
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
                              child: Text('Get Recipe', style: GoogleFonts.josefinSlab(textStyle: TextStyle(fontSize: 16.0))),
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

// CircleAvatar(
// radius: 56.0,
// child: Image.asset('images/fruits/mango.png'),
// ),

// SafeArea(
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Card(
// elevation: 4.0,
// shape: RoundedRectangleBorder(
// //side: BorderSide(color: kPrimaryColor, width: 1.0),
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(32.0),
// bottomRight: Radius.circular(32.0),
// ),
// ),
// child: Container(
// //margin: EdgeInsets.all(8.0),
// decoration: BoxDecoration(
// color: kHomeScreenBackgroundColor,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(32.0),
// bottomRight: Radius.circular(32.0),
// ),
// ),
// child: Column(
// children: <Widget>[
// Expanded(
// child: Container(
// margin: EdgeInsets.all(8.0),
// decoration: BoxDecoration(
// shape: BoxShape.circle,
// color: Colors.cyanAccent,
// ),
// alignment: Alignment.center,
// child: Image.asset('images/vegetables/bhindi.png'),
// ),
// flex: 5,
// ),
// Expanded(
// flex: 3,
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// margin: EdgeInsets.only(
// left: 8.0,
// bottom: 4.0,
// top: 32.0,
// ),
// color: kPrimaryColor,
// width: 2.0,
// ),
// SizedBox(
// width: 8.0,
// ),
// Flexible(
// child: Container(
// alignment: Alignment.bottomLeft,
// margin: EdgeInsets.only(bottom: 4.0),
// child: Text(widget.dishName.toUpperCase()),
// ),
// ),
// ],
// ),
// ),
// Expanded(
// flex: 2,
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: <Widget>[
// IconButton(
// icon: Icon(Icons.favorite_border, color: Colors.red,),
// onPressed: () {
// setState(() {
// if (favoriteDishes.contains(widget.dishName)) {
// favoriteDishes.remove(widget.dishName);
// } else {
// favoriteDishes.add(widget.dishName);
// }
// });
// },
// ),
// GestureDetector(
// onTap: () {},
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.symmetric(
// horizontal: 32.0,
// ),
// decoration: BoxDecoration(
// color: kPrimaryColor,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(32.0),
// bottomRight: Radius.circular(32.0),
// )),
// child: Text(
// 'Get Recipe',
// style: TextStyle(color: Colors.white),
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// )

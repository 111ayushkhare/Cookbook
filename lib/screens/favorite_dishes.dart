import 'package:cookbook/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Set<String> favoriteDishes = Set<String>();

class FavoriteDishes extends StatefulWidget {
  // String favDish;
  //
  // FavoriteDishes({this.favDish});

  @override
  _FavoriteDishesState createState() => _FavoriteDishesState();
}

class _FavoriteDishesState extends State<FavoriteDishes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: kPrimaryColor),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Favourite Dishes',
            style: GoogleFonts.handlee(
                textStyle: TextStyle(fontWeight: FontWeight.w500),
                fontSize: 24.0),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: GridView.count(
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 2
                  : 3,
          childAspectRatio: 0.85,
          children: List.generate(
            favoriteDishes.length,
            (index) => FavouriteTile(
              favdish: favoriteDishes.elementAt(index),
            ),
          ),
        ),
      ),
    );
  }
}

class FavouriteTile extends StatefulWidget {
  String favdish;

  FavouriteTile({this.favdish});

  @override
  _FavouriteTileState createState() => _FavouriteTileState();
}

class _FavouriteTileState extends State<FavouriteTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24.0))),
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    alignment: Alignment.center,
                    color: Color(0xffdcf5f5),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.favdish,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.handlee(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 8.0),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ListTile(
// leading: CircleAvatar(backgroundColor: kBottomNavigationColor,),
// title: Text(widget.favdish),
// );

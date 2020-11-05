import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

Set<String> list = Set<String>();

class Basket extends StatefulWidget {
  // String itemName;
  //
  // Basket({this.itemName});

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
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            'Available Items',
            style: GoogleFonts.handlee(
                textStyle: TextStyle(fontWeight: FontWeight.w500),
                fontSize: 24.0),
          ),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount:
              MediaQuery.of(context).orientation == Orientation.portrait
                  ? 2
                  : 3,
          children: List.generate(
            list.length,
            (index) => BasketCard(
              basketItem: list.elementAt(index),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Results(
                          available: list,
                        )));
          },
          icon: Icon(
            Icons.fastfood,
            color: kPrimaryColor,
          ),
          label: Text(
            'Get Dishes',
            style: GoogleFonts.josefinSlab(
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              fontSize: 20.0,
              color: kPrimaryColor,
            ),
          ),
          backgroundColor: kBottomNavigationColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}

class BasketCard extends StatefulWidget {
  String basketItem;

  BasketCard({this.basketItem});

  @override
  _BasketCardState createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> {
  Image basketItemImage;

  @override
  Widget build(BuildContext context) {
    basketItemImage = kImageMap[widget.basketItem];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8.0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0)),
        ),
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
                    child: basketItemImage,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          widget.basketItem,
                          style: GoogleFonts.handlee(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 8.0),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: kPrimaryColor,
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(
                            Icons.delete,
                          ),
                          onPressed: () {
                            setState(() {
                              list.remove(widget.basketItem);
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder(
// itemCount: list.length,
// itemBuilder: (context, index) {
// return BasketCard(
// basketItem: list.elementAt(index),
// );
// },
// ),

// Card(
// margin: EdgeInsets.symmetric(
// vertical: 8.0,
// horizontal: 24.0,
// ),
// elevation: 4.0,
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Padding(
// padding: const EdgeInsets.all(4.0),
// child: IntrinsicHeight(
// child: Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: <Widget>[
// CircleAvatar(
// child: basketItemImage,
// backgroundColor: kCardItemBackgroundColor,
// radius: 24.0,
// ),
// SizedBox(
// width: 16.0,
// ),
// VerticalDivider(color: kPrimaryColor),
// SizedBox(
// width: 16.0,
// ),
// Text(
// widget.basketItem,
// ),
// ],
// ),
// ),
// ),
// ),
// )

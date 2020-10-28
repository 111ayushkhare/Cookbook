import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/colors.dart';

Set<String> list = Set<String>();

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
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Basket'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.reply), onPressed: () {
              Navigator.pop(context);
            }),
          ],
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return BasketCard(
              basketItem: list.elementAt(index),
            );
          },
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
          icon: Icon(Icons.fastfood, color: kPrimaryColor,),
          label: Text('Get Dishes', style: TextStyle(color: kPrimaryColor),),
          backgroundColor: kBottomNavigationColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 24.0,
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: basketItemImage, backgroundColor: kCardItemBackgroundColor, radius: 24.0,),
                SizedBox(width: 16.0,),
                VerticalDivider(color: kPrimaryColor),
                SizedBox(width: 16.0,),
                Text(widget.basketItem,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

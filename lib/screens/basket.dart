import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/colors.dart';

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
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return BasketCard(
              basketItem: list[index],
            );
          },
          // shrinkWrap: true,
          // children: list.map((element) => Text(element)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Results(
                          available: list,
                        )));
          },
          child: Icon(
            Icons.fastfood,
            color: kPrimaryColor,
          ),
          backgroundColor: kBottomNavigationColor,
        ),
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
                CircleAvatar(child: basketItemImage, backgroundColor: kBottomNavigationColor, radius: 24.0,),
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

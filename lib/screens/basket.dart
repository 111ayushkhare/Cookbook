import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/results.dart';
import 'package:flutter/material.dart';

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
            return BasketCard(basketItem: list[index],);
          },
          // shrinkWrap: true,
          // children: list.map((element) => Text(element)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Results(available: list,)));
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
  final String basketItem;

  BasketCard({this.basketItem});

  @override
  _BasketCardState createState() => _BasketCardState();
}

class _BasketCardState extends State<BasketCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: ListTile(
              title: Text(widget.basketItem),
              trailing: Icon(Icons.delete,),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cookbook/fruits.dart';
import 'package:cookbook/vegetables.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            title: Text('CookBook', style: TextStyle(fontSize: 24.0),),
            toolbarHeight: 144.0,
            elevation: 8.0,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
            ],
            bottom: TabBar(
              labelPadding: EdgeInsets.all(16.0),
              labelStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 24.0,
              ),
              tabs: [
                Text(
                  'Veggies',
                ),
                Text(
                  'Veggies',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Veggies(),
              Fruits(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: (){},
            elevation: 4.0,
            label: Text('Cook'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        ),
      ),
    );
  }
}

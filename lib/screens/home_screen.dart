import 'package:flutter/material.dart';
import 'package:cookbook/vegetables.dart';
import 'package:cookbook/fruits.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            'CookBook',
            style: TextStyle(fontSize: 24.0),
          ),
          toolbarHeight: 128.0,
          elevation: 8.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, 'BasketScreen');
              },
            ),
          ],
          bottom: TabBar(
            labelPadding: EdgeInsets.all(16.0),
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
            tabs: [
              Text(
                'Vegetables',
              ),
              Text(
                'Fruits',
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
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {},
        //   elevation: 4.0,
        //   label: Text('Cook'),
        // ),
        // floatingActionButtonLocation:
        //     FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
          ],
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }
}
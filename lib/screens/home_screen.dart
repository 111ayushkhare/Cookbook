import 'package:flutter/material.dart';
import 'package:cookbook/categories/vegetables.dart';
import 'package:cookbook/categories/fruits.dart';
import 'package:cookbook/categories/beverages.dart';
import 'package:cookbook/categories/non_veg.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/colors.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
            isScrollable: true,
            indicatorColor: Colors.white,
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
              Text(
                'Beverages',
              ),
              Text(
                'Non-Veg',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Veggies(),
            Fruits(),
            Bevarages(),
            NonVeg(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Home',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              title: Text(
                'Capture',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Favorite'),
            ),
          ],
          backgroundColor: kBottomNavigationColor,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kCardItemBackgroundColor,
          child: Icon(Icons.shopping_cart, color: kPrimaryColor,),
          onPressed: () {
            Navigator.pushNamed(context, 'Basket');
          },
        ),
      ),
    );
  }
}

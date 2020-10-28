import 'package:cookbook/categories/miscellaneous.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/categories/vegetables.dart';
import 'package:cookbook/categories/fruits.dart';
import 'package:cookbook/categories/non_veg.dart';
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
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(16.0),
            labelStyle: TextStyle(
              fontSize: 16.0,
            ),
            tabs: [
              Text('VEGETABLES'),
              Text('FRUITS'),
              Text('COMMON-MIX'),
              Text('NON-VEG'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Veggies(),
            Fruits(),
            MixItems(),
            NonVeg(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kCardItemBackgroundColor,
          child: Icon(Icons.shopping_cart, color: kPrimaryColor,),
          onPressed: () {
            Navigator.pushNamed(context, 'BasketScreen');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: MediaQuery.of(context).size.width / 8,),
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              SizedBox(width: MediaQuery.of(context).size.width / 8,),
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
              SizedBox(width: MediaQuery.of(context).size.width / 8,),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: kBottomNavigationColor,
        ),
      ),
    );
  }
}

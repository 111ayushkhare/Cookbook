import 'package:cookbook/categories/miscellaneous.dart';
import 'package:flutter/material.dart';
import 'package:cookbook/categories/vegetables.dart';
import 'package:cookbook/categories/fruits.dart';
import 'package:cookbook/categories/non_veg.dart';
import 'package:cookbook/constants/colors.dart';
import 'package:cookbook/screens/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: DrawerScreen(),
        appBar: AppBar(
          title: Text(
            'CookBook',
            style: GoogleFonts.handlee(textStyle: TextStyle(fontSize: 32.0), fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
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
              Text('VEGETABLES', style: GoogleFonts.handlee(textStyle: TextStyle()),),
              Text('FRUITS', style: GoogleFonts.handlee(textStyle: TextStyle()),),
              Text('COMMON-MIX', style: GoogleFonts.handlee(textStyle: TextStyle()),),
              Text('NON-VEG', style: GoogleFonts.handlee(textStyle: TextStyle()),),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(icon: Icon(Icons.favorite), onPressed: () {Navigator.pushNamed(context, 'FavoriteDishesScreen');}),
              IconButton(icon: Icon(Icons.add_a_photo), onPressed: () {}),
            ],
          ),
          shape: CircularNotchedRectangle(),
          color: kBottomNavigationColor,
        ),
      ),
    );
  }
}


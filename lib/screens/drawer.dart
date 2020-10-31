import 'package:flutter/material.dart';
import 'package:cookbook/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // header
          UserAccountsDrawerHeader(
            accountName: Text(
              'Anonymous',
              style: GoogleFonts.federo(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                fontSize: 24.0,
              ),
            ),
            accountEmail: Text(
              'anonymous@testmail.com',
              style: GoogleFonts.federo(
                textStyle: TextStyle(color: kPrimaryColor),
                fontSize: 16.0,
              ),
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: kPrimaryColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: kBottomNavigationColor,
            ),
          ),

          // Body
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'ProfileScreen');
            },
            child: ListTile(
              title: Text(
                'My Profile',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.person,
                color: kPrimaryColor,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'FreqItemsScreen');
            },
            child: ListTile(
              title: Text(
                'Frequently Available',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.shopping_cart,
                color: kPrimaryColor,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'FavoriteDishesScreen');
            },
            child: ListTile(
              title: Text(
                'Favourite Dishes',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.favorite,
                color: kPrimaryColor,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'SettingsScreen');
            },
            child: ListTile(
              title: Text(
                'Settings',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.settings,
                color: kPrimaryColor,
              ),
            ),
          ),
          Divider(
            color: kPrimaryColor,
            indent: 16.0,
            endIndent: 32.0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'AboutAppScreen');
            },
            child: ListTile(
              title: Text(
                'About CookBook App',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.help,
                color: Colors.blueGrey,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'AboutDevelopersScreen');
            },
            child: ListTile(
              title: Text(
                'About Developers',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.developer_mode,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Divider(
            color: kPrimaryColor,
            indent: 16.0,
            endIndent: 32.0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'AboutDevelopersScreen');
            },
            child: ListTile(
              title: Text(
                'Log out',
                style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                    fontSize: 16.0),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.green[900],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
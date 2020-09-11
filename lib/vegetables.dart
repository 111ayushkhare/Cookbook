import 'package:flutter/material.dart';

class Veggies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(16.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
        CardTile(veggiePic: Image.asset('images/category/veggies.png', width: 96.0, height: 96.0,), veggieName: 'Paneer',),
        CardTile(veggiePic: Image.asset('images/category/fruits.png', width: 96.0, height: 96.0,), veggieName: 'Chhole',),
      ],
    );
  }
}

class CardTile extends StatelessWidget {

  final String veggieName;
  final Image veggiePic;

  CardTile({this.veggiePic, this.veggieName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: (){
          print('HI');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            veggiePic,
            Text(veggieName),
          ],
        ),
      ),
    );
  }
}


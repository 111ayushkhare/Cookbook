import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cookbook/constants.dart';
import 'package:cookbook/screens/basket.dart';
import 'package:cookbook/colors.dart';

class Fruits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHomeScreenBackgroundColor,
      child: ListView.builder(
        itemCount: kFruitsList.length,
        itemBuilder: (context, index) {
          return ItemBox(
            itemName: kFruitsList[index]['name'],
            itemImage: kFruitsList[index]['iconPath'],
          );
        },
      ),
    );
  }
}

class ItemBox extends StatefulWidget {
  final String itemName;
  final String itemImage;

  ItemBox({this.itemName, this.itemImage});

  @override
  _ItemBoxState createState() => _ItemBoxState();
}

class _ItemBoxState extends State<ItemBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192.0,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: kCardItemBackgroundColor,
                    borderRadius: BorderRadius.circular(24.0),
                    boxShadow: kShadowList,
                  ),
                  margin: EdgeInsets.only(top: 56.0),
                ),
                Align(
                  child: Image.asset(widget.itemImage),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 72, bottom: 24.0),
                decoration: BoxDecoration(
                  color: kCardColorF,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                  ),
                  boxShadow: kShadowList,
                ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isSelected = !isSelected;
                      print(isSelected);
                      kCardColorF = isSelected ? kCardSelectedColorF : kCardUnselectedColorF;
                      kCardTextColorF = isSelected ? kCardSelectedTextColorF : kCardUnselectedTextColorF;
                      if(isSelected && !list.contains(widget.itemImage)) {
                        list.add(widget.itemName);
                      } else {
                        list.remove(widget.itemName);
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      widget.itemName,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic,
                        color: kCardTextColorF
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}



// Column(
//     children: <Widget>[
//       Container(
//         padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
//         margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(24.0),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Icon(Icons.search),
//             SizedBox(
//               width: 16.0,
//             ),
//             Text('Search fruits you have'),
//           ],
//         ),
//       ),

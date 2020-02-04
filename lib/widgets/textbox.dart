import 'package:flutter/material.dart';
import 'package:fruits_vegies/data/data.dart';

class TextBox extends StatefulWidget {
  @override
  _TextBoxState createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width * 0.70,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
            child: TextField(
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  labelText: ('Type to Search'),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            )),
        Container(
          width: MediaQuery.of(context).size.width * 0.10,
          child: IconButton(
              onPressed: () {
                //fruitsnvegies.sort()
                //fruitsnvegies.sort((a, b) => a.length.compareTo(b.length));
                fruitsnvegies.sort((a, b) {
                  var aName = a['type'].toLowerCase();
                  var bName = b['type'].toLowerCase();
                  return ((aName < bName) ? -1 : ((aName > bName) ? 1 : 0));
                });
              },
              icon: Icon(
                Icons.arrow_upward,
              )),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.10,
          child: IconButton(
              onPressed: () {
                //fruitsnvegies.sort();
              },
              icon: Icon(
                Icons.arrow_downward,
              )),
        )
      ],
    ));
  }
}

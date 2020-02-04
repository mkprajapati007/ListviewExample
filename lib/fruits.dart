import 'package:flutter/material.dart';
import 'package:fruits_vegies/widgets/ListView.dart';
import 'package:fruits_vegies/widgets/TotalRecords.dart';
import 'widgets/textbox.dart';

class Fruitsnvegies extends StatefulWidget {
  @override
  _FruitsnvegiesState createState() => _FruitsnvegiesState();
}

class _FruitsnvegiesState extends State<Fruitsnvegies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lists of Fruits N Vegies'),
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[TextBox(), ListOfRecords(), TotRecords()],
          )),
        ));
  }
}

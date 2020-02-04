import 'package:flutter/material.dart';
import 'package:fruits_vegies/data/data.dart';

var L1 = [];

class TotRecords extends StatefulWidget {
  @override
  _TotRecordsState createState() => _TotRecordsState();
}

class _TotRecordsState extends State<TotRecords> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Total Records : ${fruitsnvegies.length}',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}

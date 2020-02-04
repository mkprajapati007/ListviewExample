import 'package:flutter/material.dart';
import 'package:fruits_vegies/data/data.dart';

class ListOfRecords extends StatefulWidget {
  @override
  _ListOfRecordsState createState() => _ListOfRecordsState();
}

class _ListOfRecordsState extends State<ListOfRecords> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: fruitsnvegies.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Card(
                child: ListTile(
                  title: Text(
                    '${fruitsnvegies[index].name}',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '${fruitsnvegies[index].taste}',
                    style: TextStyle(color: Colors.red),
                  ),
                  leading: Icon(Icons.access_alarms),
                  trailing: Text(
                    '${fruitsnvegies[index].type} (${fruitsnvegies[index].price})',
                    style: TextStyle(color: Colors.green),
                  ),
                  onTap: () {},
                ),
              ),
            );
          }),
    );
  }
}

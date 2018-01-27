import 'package:flutter/material.dart';

class PrescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView(
        children: <Widget>[
          new PrescriptionPageListItem(),
          new Divider(),
          new PrescriptionPageListItem(),
        ],
      ),
    );
  }
}

class PrescriptionPageListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: new Text(
                    'Atorvastatin 10mg',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  '10 days remaining',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Column(
            children: <Widget>[
              new Text("Test"),
              new Text("Test")
            ],
          )
        ],
      ),
    );
  }
}

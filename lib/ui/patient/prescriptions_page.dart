import 'package:flutter/material.dart';

class PrescriptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView(
        children: <Widget>[
          new PrescriptionsPageListItem(),
          new PrescriptionsPageListItem(),
        ],
      ),
    );
  }
}

class PrescriptionsPageListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
        child: new Card(
            child: new Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                          'Take one every evening',
                          style: new TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Column(
                    children: <Widget>[
                      new Text("10 days"),
                      new Text("remaining")
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}

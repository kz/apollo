import 'package:flutter/material.dart';

class PrescriptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              begin: const Alignment(0.0, -1.0),
              end: const Alignment(0.0, 0.6),
              colors: <Color>[
                const Color(0xff27414d),
                const Color(0xff1f3541),
              ]),
        ),
        padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
              child: new Text(
                "Prescriptions",
                style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
            ),
            new Expanded(
              child: new ListView(
                children: <Widget>[
                  new PrescriptionsPageListItem(),
                  new PrescriptionsPageListItem(),
                ],
              ),
            )
          ],
        ));
  }
}

class PrescriptionsPageListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(8.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        border: new Border(),
        borderRadius: new BorderRadius.all(
          const Radius.circular(2.0),
        ),
      ),
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
                      fontSize: 18.0,
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
            children: <Widget>[new Text("10 days"), new Text("remaining")],
          )
        ],
      ),
    );
  }
}

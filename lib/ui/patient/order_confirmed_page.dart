import 'package:flutter/material.dart';

class OrderConfirmedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      child: new Column(
        children: <Widget>[
          new Text("Order made"),
          new Icon(Icons.assignment_turned_in, size: 128.0),
          new Text("You will be notified when your order is ready to collect."),
        ],
      ),
    );
  }
}

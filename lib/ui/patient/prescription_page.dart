import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Prescription extends StatelessWidget {
  const Prescription({@required this.name, @required this.instructions});

  final String name;
  final String instructions;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(name),
                new Text(instructions),
                new Text(instructions)
              ],
            ),
          ),
          new RaisedButton(
            onPressed: null,
            child: new Center(child: new Text("Order")),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(15.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: new CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.15,
                  child: new Text("GP"),
                ),
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("Test"),
                    new Text("Test"),
                  ],
                ),
              ),
            ],
          ),
          new Divider(),
          new Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: new Text("Update Details")
          ),
          new Divider(),
          new Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: new Text("Settings")
          ),
          new Divider(),
        ],
      ),
    );
  }
}

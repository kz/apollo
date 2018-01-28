import 'package:apollo/ui/patient/chemists_page.dart';
import 'package:apollo/ui/patient/prescriptions_page.dart';
import 'package:apollo/ui/patient/user_page.dart';
import 'package:flutter/material.dart';

class PatientContainer extends StatelessWidget {
  final int _numTabs = 4;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: _numTabs,
      child: new Scaffold(
        appBar: new AppBar(
          title: const Text('Title'), // Todo: Remove
          bottom: new TabBar(
            isScrollable: true,
            tabs: <Widget>[
              new Tab(
                text: "Prescriptions",
                icon: new Icon(Icons.assignment),
              ),
              new Tab(
                text: "Chemists",
                icon: new Icon(Icons.location_city),
              ),
              new Tab(
                text: "Me",
                icon: new Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Padding>[
            new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new PrescriptionsPage(),
            ),
            new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new ChemistsPage(),
            ),
            new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new UserPage(),
            ),
          ]
        ),

      ),
    );
  }
}

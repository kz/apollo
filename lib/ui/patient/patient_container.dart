import 'package:apollo/ui/patient/chemists_page.dart';
import 'package:apollo/ui/patient/prescriptions_page.dart';
import 'package:apollo/ui/patient/user_page.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class PatientContainer extends StatefulWidget {
  @override
  _PatientContainerState createState() => new _PatientContainerState();
}

class _PageDetail {
  String title;
  IconData icon;

  _PageDetail({@required this.title, @required this.icon});
}

class _PatientContainerState extends State<PatientContainer>
    with SingleTickerProviderStateMixin {
  final int _numTabs = 3;

  TabController _controller;
  int _screen;
  List<_PageDetail> _pageDetails;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: _numTabs, vsync: this);
    _screen = 0;

    _pageDetails = [
      new _PageDetail(
        title: "Prescription",
        icon: Icons.assignment,
      ),
      new _PageDetail(
        title: "Chemists",
        icon: Icons.location_city,
      ),
      new _PageDetail(
        title: "Profile",
        icon: Icons.person,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: _numTabs,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(_pageDetails[_screen].title),
        ),
        body: new TabBarView(
          controller: _controller,
          children: <Widget>[
            new PrescriptionsPage(),
            new ChemistsPage(),
            new UserPage(),
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _screen,
          onTap: (int index) {
            setState(() {
              _screen = index;
              _controller.animateTo(index);
            });
          },
          items: new List<BottomNavigationBarItem>.generate(_pageDetails.length,
              (int index) {
            return new BottomNavigationBarItem(
              icon: new Icon(_pageDetails[index].icon),
              title: new Text(_pageDetails[index].title),
            );
          }),
        ),
      ),
    );
  }
}

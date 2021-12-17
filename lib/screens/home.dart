import 'package:flutter/material.dart';
import 'package:shop/screens/package.dart';
import 'package:shop/screens/pickup_date.dart';
import 'package:shop/utils/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    PickupDate(),
    Package(),

  ];

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,

        unselectedItemColor:grey,
        selectedItemColor: blue,
        backgroundColor:white,

        type: BottomNavigationBarType.fixed,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: white,
            icon: Icon(
              Icons.access_time_rounded,
              size: _width * 0.08,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            backgroundColor: white,
            icon: Icon(
              Icons.event_available_rounded,
              size: _width * 0.08,
            ),
            label: "Events",
          ),

        ],
        currentIndex: _selectedIndex,

        onTap: onTapped,
      ),
    );
  }
}

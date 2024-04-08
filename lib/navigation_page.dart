import 'package:flutter/material.dart';
import 'package:moneyappui/page1.dart';
import 'package:moneyappui/page2.dart';
import 'package:moneyappui/page3.dart';
import 'package:moneyappui/page4.dart';

class NavigationPage extends StatefulWidget {
  final String initialName;

  NavigationPage({required this.initialName});

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_currentIndex),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black, // Change the selected item color
        unselectedItemColor:
            Colors.black.withOpacity(0.6), // Change the unselected item color
        selectedLabelStyle: TextStyle(
            color: Colors.black), // Change the selected label text color
        unselectedLabelStyle: TextStyle(
            color: Colors.black), // Change the unselected label text color
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            label: 'notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            label: 'account',
          ),
        ],
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return Page1(name: widget.initialName);
      case 1:
        return Page2();
      case 2:
        return Page3();
      case 3:
        return Page4();
      default:
        return Container();
    }
  }
}

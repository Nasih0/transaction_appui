import 'package:flutter/material.dart';
import 'package:moneyappui/first_homepage.dart';
//import 'package:moneyappui/first_homepage.dart';
import 'package:moneyappui/navigation_page.dart';
//import 'navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(
          // Your theme settings
          ),
      initialRoute:
          '/', // Set the initial route to '/' or any other route you prefer
      routes: {
        '/': (context) => FirstHomePage(), // Set the route for FirstHomePage
        '/navigation': (context) => NavigationPage(
              initialName: 'name',
            ), // Set the route for NavigationPage
      },
    );
  }
}

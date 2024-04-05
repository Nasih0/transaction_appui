import 'package:flutter/material.dart';
import 'package:moneyappui/first_homepage.dart';


class TextInputPage extends StatelessWidget {
  const TextInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Demo',
      home: FirstHomePage() // Use TextInputPage as the home
    );
  }
}

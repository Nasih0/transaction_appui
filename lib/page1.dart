import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final String name;

  Page1({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        // Handle back button press
                      },
                    ),
                    CircleAvatar(
                        // Add circle avatar properties
                        ),
                    IconButton(
                      icon: Icon(Icons.toggle_on),
                      onPressed: () {
                        // Handle toggle icon press
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome!',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '$name ',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  SizedBox(height: 20), // Add space between name and image
                  Container(
                    width: 400, // Adjust width according to your needs
                    height: 300, // Adjust height according to your needs
                    child: Image.asset(
                      'lib/images/card.jpg', // Replace 'lib/images/card.jpg' with the actual path to your image file
                      fit: BoxFit
                          .fill, // Make the image stretch to fill the container
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Your Transactions',
                style: TextStyle(
                  fontSize: 15,
                )),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Number of items in your list
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      // Add circle avatar properties
                      child: Text('${index + 1}'),
                    ),
                    title: Text('Amazon Bill'),
                    subtitle: Text('22 may 2023'),
                    trailing: Text('20,000/-'),
                    onTap: () {
                      // Handle item tap
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

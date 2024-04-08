import 'package:flutter/material.dart';
import 'package:moneyappui/navigation_page.dart';

class FirstHomePage extends StatefulWidget {
  final String initialName;

  FirstHomePage({this.initialName = ''});
  @override
  _FirstHomePageState createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              decoration: InputDecoration(
                labelText: '     Enter your name',
                labelStyle: TextStyle(color: Colors.blueAccent[200]),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: const Image(
                image: AssetImage('lib/images/payment.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                'GREAT JOB!',
                style: TextStyle(fontSize: 15, color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Play,Pay,Prosper!',
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 52, 143),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                " you're in the top 1% for quick shared \n    payment with friends. great job! ",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(139, 181, 254, 1),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    String enteredName = _textEditingController.text;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationPage(
                          initialName:
                              enteredName.isNotEmpty ? enteredName : '',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

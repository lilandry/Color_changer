import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: View()));
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  // Default Background Color.
  Color colorCode = Colors.lightBlue;

  final Random random = Random();

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorCode,
        appBar: AppBar(title: Text('Greatings')),
        body: Center(
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: RaisedButton(
                  onPressed: () => generateRandomColor(),
                  child: Text('Tap'),
                  textColor: Colors.white,
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                ))));
  }
}

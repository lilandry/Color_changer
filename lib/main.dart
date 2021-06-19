import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import './phrases_manager.dart';

void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HeadApp'),
          backgroundColor: Color(Random().nextInt(0xffffffff)),
        ),
        body:

          PhrasesManager('tester'),

        backgroundColor: Color(Random().nextInt(0xffffffff)),

      ),
    );
  }
}

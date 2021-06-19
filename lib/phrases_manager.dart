import 'package:flutter/material.dart';

import './phrases.dart';
import './phrases_control.dart';

class PhrasesManager extends StatefulWidget {
  final String startingPhrase;

  PhrasesManager(this.startingPhrase);

  @override
  State<StatefulWidget> createState() {
    return _PhrasesManagerState();
  }
}

class _PhrasesManagerState extends State<PhrasesManager> {
  List<String> _phrases = [];

  @override
  void initState() {
    _phrases.add(widget.startingPhrase);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(),
        ),
        Phrases(_phrases)
      ],
    );
  }
}

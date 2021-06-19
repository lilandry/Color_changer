import 'package:flutter/material.dart';

class Phrases extends StatelessWidget {
  final List<String> phrases;
  Phrases(this.phrases);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: phrases
          .map((element) =>
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/hellothere.jpg'),
                Text(element)
//   Image.asset('assets/general.jpg'),
//   Text('General Kenoby')
              ],
            ),
          ))
          .toList(),
    );
  }


}
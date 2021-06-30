import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Widgets',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('hello'),
      Text('hello'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('hello'),
      Text('hello'),
    ],
      ),
      Text('hello'),
      Text('hello'),
    ],
    );
  }
}



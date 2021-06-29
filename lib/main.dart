import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Widgets',
    home: Scaffold(
      body: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 200,
      width: 200,
      child: Text('hello',
      style: TextStyle(
          color: Colors.white,
      ),),
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(100, 40, 20, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.amber,
          width: 5,
        )

      ),
      transform: Matrix4.rotationZ(.2),



    );
  }
}



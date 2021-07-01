import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Widgets',
    home: Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
      ),
      body: Home(),
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<int> list = [];
  @override
  void initState() {
    super.initState();
    for(int i =0;i<=50; i++){
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext cx, int index){
      return ListTile(
        title: Text('Item ${list[index]}'),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),

        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
      );
    });
  }
}




import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Widgets',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.list,
            color: Colors.blue,
          ),
            label: 'Basic',

            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.list_outlined,
            color: Colors.green,
          ),
            label: 'Vertical',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(icon: Icon(
            Icons.list_alt,
            color: Colors.amber,
          ),
            label: 'Horizontal',
            backgroundColor: Colors.amber,

          ),
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),

    );
  }
}

//ListView.builder(itemBuilder: (BuildContext cx, int index){
//       return ListTile(
//         title: Text('Item ${list[index]}'),
//         leading: Container(
//           height: 40,
//           width: 40,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.black,
//           ),
//
//         ),
//         trailing: Icon(
//           Icons.arrow_forward_ios,
//         ),
//       );
//     });




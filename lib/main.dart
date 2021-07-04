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
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: buildListView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.blue,
            ),
            label: 'Basic',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_outlined,
              color: Colors.green,
            ),
            label: 'Vertical',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_alt,
              color: Colors.amber,
            ),
            label: 'Horizontal',
            backgroundColor: Colors.amber,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }

  Widget buildListView() {
    if (currentIndex == 0) {
      return buildBasicListView();
    } else if (currentIndex == 1) {
      return buildVerticalListView();
    } else if (currentIndex == 2) {
      return buildHorizontalListView();
    } else {
      return Container();
    }
  }

  Widget buildBasicListView() {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext cx, int index) {
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

  Widget buildVerticalListView() {
    return ListView.separated(
        itemBuilder: (context, index) {
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
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
        itemCount: list.length);
  }

  Widget buildHorizontalListView() {
    return ListView.separated(
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            width: 200,
            height: 100,
            child: ListTile(
              title: Text('Item'),
              subtitle: Text('${list[index]}'),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
        itemCount: list.length);
  }
}

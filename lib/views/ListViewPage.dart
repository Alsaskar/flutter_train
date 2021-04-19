import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final List users = [
    "Alsaskar Mirando",
    "Brygita Lumi",
    "Koyuki Mokalu",
    "Youla Balango",
    "Nita Liud",
    "Deavenly Lasut",
    "Angie Lae",
    "Enoria Balango",
    "Yosua Mewengkang",
    "Angel",
    "Bintang Algaza",
    "Aditya Ananda"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data User Yang Daftar"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                users[index],
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}

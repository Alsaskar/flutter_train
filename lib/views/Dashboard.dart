import 'package:flutter/material.dart';
import 'package:train_first/views/FormPage.dart';
import 'package:train_first/views/ListViewPage.dart';
import 'package:train_first/views/GridViewPage.dart';
import 'package:train_first/widget/BuildDrawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: containerOne(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: containerTwo(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> containerOne(context) {
    return [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FormPage()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 150,
          color: Colors.blue,
          child: Text(
            "Latihan Form",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),

      // kasih space
      SizedBox(width: 10),

      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListViewPage()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 150,
          color: Colors.orange,
          child: Text(
            "ListView",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ];
  }

  List<Widget> containerTwo(context) {
    return [
      Container(
        alignment: Alignment.center,
        height: 100,
        width: 150,
        color: Colors.red,
        child: Text(
          "Latihan Sidebar",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),

      // kasih space
      SizedBox(width: 10),

      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GridViewPage()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 150,
          color: Colors.green,
          child: Text(
            "GridView",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    ];
  }
}

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman GridView"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Container(
            child: Card(
              color: Colors.blue,
              child: InkWell(
                onTap: () {
                  print(index.toString());
                },
                child: Text(index.toString()),
              ),
            ),
          );
        }),
      ),
    );
  }
}

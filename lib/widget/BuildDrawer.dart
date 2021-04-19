import 'package:flutter/material.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Saskar Tech"),
              accountEmail: Text("saskartech@gmail.com"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/logo.png"),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.blue,
              ),
              title: Text("Homepage"),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return Homepage();
                //     },
                //   ),
                // );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blue,
              ),
              title: Text("My Account"),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return MyAccount();
                //     },
                //   ),
                // );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.apps,
                color: Colors.blue,
              ),
              title: Text("Categories"),
              onTap: () {
                print("Categories");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text("Favorites"),
              onTap: () {
                print("Favorites");
              },
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) {
                //       return Setting();
                //     },
                //   ),
                // );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.announcement,
                color: Colors.blue,
              ),
              title: Text("About"),
              onTap: () {
                print("About");
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget menuHeader(IconData iconLeading, String title) {
  //   return ListTile(
  //     leading: Icon(iconLeading),
  //     title: Text(title),
  //     onTap: () {
  //       print("Hallo");
  //     },
  //   );
  // }

  // Widget buildListTile(BuildContext context, IconData iconLeading, String title,
  //     Widget Function() pageRouter) {
  //   return ListTile(
  //     leading: Icon(iconLeading),
  //     title: Text(title),
  //     onTap: () {
  //       Navigator.of(context).pop();
  //       Navigator.of(context).push(
  //         MaterialPageRoute(
  //           builder: (BuildContext context) {
  //             return pageRouter();
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }
}

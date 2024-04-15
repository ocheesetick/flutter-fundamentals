import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      drawer: Drawer(
          backgroundColor: Colors.deepPurple[100],
          child: Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.favorite,
                size: 48,
              )),

              // Home page list tile
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  // pop/close drawer first
                  Navigator.pop(context);
                  // then go to the route
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              // Home page list tile
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  // pop/close drawer first
                  Navigator.pop(context);
                  // then go to the route
                  Navigator.pushNamed(context, '/settingspage');
                },
              )
            ],
          )),
    );
  }
}

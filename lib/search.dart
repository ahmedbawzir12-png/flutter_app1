import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My List')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
            subtitle: Text("this first app by list view"),

          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text("search"),
            subtitle: Text("this a part for search"),
          ),
          ListTile(
            leading:Icon(Icons.settings) ,
            title: Text("Settings"),
            subtitle: Text("this is part for settings"),
          )
        ],
        

      )
    );
  }
}

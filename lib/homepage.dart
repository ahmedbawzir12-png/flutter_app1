import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Shared preferences",style: TextStyle(color: Colors.white),)),
      body: ListView(
        children: [
          MaterialButton(
            onPressed: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              sharedPreferences.setString("name", "Amer");
            },
            child: Text("set name"),
          ),
          MaterialButton(
            onPressed: () async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              String name = sharedPreferences.getString("name")!;
              print(name);
            },
            child: Text("print name"),
          ),
        ],
      ),
    );
  }
}

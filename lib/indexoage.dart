import 'package:flutter/material.dart';

import 'homepage.dart';
import '../lib copy/Searchpage.dart';
import 'settingpage.dart';
import 'account.dart';

class indexpage extends StatefulWidget {
  const indexpage({super.key});

  @override
  State<indexpage> createState() => _homeoageState();
}

class _homeoageState extends State<indexpage> {
  int _bottomnav = 0;
  List<Widget> _pages = [account(), homepage(), Searchpage(), Settingpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 4, 131, 87),
        title: Text(
          "Navbar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: IndexedStack(index: _bottomnav, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomnav,
        selectedItemColor: const Color.fromARGB(255, 27, 204, 142),
        unselectedItemColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            _bottomnav = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "checkbox",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}

String fgetTilte(int index) {
  switch (index) {
    case 0:
      return "Home";
    case 1:
      return "search";
    case 2:
      return "check";
    case 3:
      return "settings";
    default:
      return "wrong";
  }
}

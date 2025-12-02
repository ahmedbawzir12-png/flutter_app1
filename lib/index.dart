import 'package:flutter/material.dart';
import 'home.dart';
import 'search.dart';
import 'account.dart';
import 'settings.dart';
class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int bottomNavbar = 0;
  List<Widget> pages = [Home(), Search(),Account(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: IndexedStack(index: bottomNavbar, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            bottomNavbar = index;
          });
        },
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
         BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Account"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")



        ],
      ),
    );
  }
}

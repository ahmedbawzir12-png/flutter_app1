import 'package:flutter/material.dart';
//import 'package:flutter_application_index/index.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _c1 = TextEditingController();
  TextEditingController _c2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _c1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "name",
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _c2,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "password",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _c2.text = _c1.text;
              },
              child: Text("press"),
            ),
             
             
             
          ],
        ),
      ),
    );
  }
}

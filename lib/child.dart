import 'package:flutter/material.dart';
import 'items.dart';

class Child extends StatelessWidget {
  const Child({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 248, 246),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 2, 98, 111),
        title: Text(
          "ساعات اطفال",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Items(
              title: "ساعة يد للاطفال",
              subtitle: "لتدوم فرحتهم",
              imagepath: "images/child1.png",
              price: "السعر :\$10",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد للاطفال",
              subtitle: "لتدوم فرحتهم",
              imagepath: "images/child2.png",
              price: "السعر :\$8",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد للاطفال",
              subtitle: "لتدوم فرحتهم",
              imagepath: "images/child3.png",
              price: "السعر :\$12",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد للاطفال",
              subtitle: "لتدوم فرحتهم",
              imagepath: "images/child4.png",
              price: "السعر :\$15",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد للاطفال",
              subtitle: "لتدوم فرحتهم",
              imagepath: "images/child1.png",
              price: "السعر :\$11",
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

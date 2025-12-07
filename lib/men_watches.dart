import 'package:flutter/material.dart';
import 'items.dart';
import 'package:google_fonts/google_fonts.dart';

class MenWatches extends StatelessWidget {
  const MenWatches({super.key});

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
          "ساعات رجالية",
          style: GoogleFonts.tajawal(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man1.png",
              price: "السعر :\$77 ",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man2.png",
              price: 'السعر :\$40',
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man3.png",
              price: " السعر :\$65",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man4.png",
              price: "السعر :\$88",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man5.png",
              price: "السعر :\$66",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد رجالية",
              subtitle: "اناقة لا مثيل لها",
              imagepath: "images/man6.png",
              price: "السعر :\$99",
            ),
          ],
        ),
      ),
    );
  }
}

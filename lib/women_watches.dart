import 'package:flutter/material.dart';
import 'items.dart';
import 'package:google_fonts/google_fonts.dart';

class WomenWatches extends StatelessWidget {
  const WomenWatches({super.key});

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
          "ساعات نسائية",
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
            SizedBox(height: 15),
            Items(
              title: "ساعة يد نسائية",
              subtitle: "اناقه تدوم دائماً",
              imagepath: "images/w1.png",
              price: " السعر :\$110",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد نسائية",
              subtitle: "اناقه تدوم دائماً",
              imagepath: "images/w2.png",
              price: " السعر :\$70",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد نسائية",
              subtitle: "اناقه تدوم دائماً",
              imagepath: "images/w3.png",
              price: " السعر :\$140",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد نسائية",
              subtitle: "اناقه تدوم دائماً",
              imagepath: "images/w4.png",
              price: " السعر :\$60",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة يد نسائية",
              subtitle: "اناقه تدوم دائماً",
              imagepath: "images/w5.png",
              price: " السعر :\$45 ",
            ),
          ],
        ),
      ),
    );
  }
}

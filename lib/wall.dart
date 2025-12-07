import 'package:flutter/material.dart';
import 'items.dart';
import 'package:google_fonts/google_fonts.dart';

class Wall extends StatelessWidget {
  const Wall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
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
          "ساعات جدار",style: GoogleFonts.tajawal(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )
          ),
        
        
        
        
        
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: ListView(
          children: [
            SizedBox(height: 15),
            Items(
              title: "ساعة جدار",
              subtitle: "دقة تلهم وقتك",
              imagepath: "images/wall1.png",
              price: "السعر :\$150",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة جدار",
              subtitle: "دقة تلهم وقتك",
              imagepath: "images/wall2.png",
              price: "السعر :\$170",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة جدار",
              subtitle: "دقة تلهم وقتك",
              imagepath: "images/wall3.png",
              price: "السعر :\$185",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة جدار",
              subtitle: "دقة تلهم وقتك",
              imagepath: "images/wall4.png",
              price: "السعر :\$200",
            ),
            SizedBox(height: 15),
            Items(
              title: "ساعة جدار",
              subtitle: "دقة تلهم وقتك",
              imagepath: "images/wall5.png",
              price: "السعر :\$250",
            ),
          ],
        ),
      ),
    );
  }
}

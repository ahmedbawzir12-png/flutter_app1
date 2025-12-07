import 'package:flutter/material.dart';
import 'buy_items.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  const Items({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagepath,
    required this.price,
  });
  final String title;
  final subtitle;
  final String imagepath;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 236, 236),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color.fromARGB(255, 2, 98, 111), width: 2),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(96, 90, 88, 88),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 6),
          ),
        ],
      ),
      width: 350,
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 110,
            height: 220,
            child: Image(image: AssetImage(imagepath)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 12),
                child: Text(
                  title,
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  subtitle,
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                      color: const Color.fromARGB(255, 44, 44, 44),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyItems()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(40, 20),

                  backgroundColor: Color.fromARGB(255, 2, 98, 111),
                ),

                child: Text(
                  price,
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

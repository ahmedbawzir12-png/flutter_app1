import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyItems extends StatefulWidget {
  const BuyItems({super.key});

  @override
  State<BuyItems> createState() => _BuyItemsState();
}

class _BuyItemsState extends State<BuyItems> {
  final TextEditingController nameC = TextEditingController();
  final TextEditingController descC = TextEditingController();
  final TextEditingController priceC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 248, 246),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 98, 111),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        title: Text(
          "تسجيل مواصفات الساعة",
          style: GoogleFonts.tajawal(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: nameC,
              decoration: const InputDecoration(
                labelText: "اسم الساعة",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: descC,
              decoration: const InputDecoration(
                labelText: "الوصف",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: priceC,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "السعر",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print("الاسم: ${nameC.text}");
                  print("الوصف: ${descC.text}");
                  print("السعر: ${priceC.text}");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10)

                ),
                child: Text(
                  "شراء",
                  style: GoogleFonts.tajawal(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

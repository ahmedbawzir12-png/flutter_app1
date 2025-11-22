import 'package:flutter/material.dart';
import 'secondpage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text("Navigation",style: TextStyle(color: Colors.white),),
        ),
            body: Padding(
  padding: const EdgeInsets.all(20),
  child: Builder(
    builder: (context) {
      // تعريف المتحكمين هنا (قبل قائمة children)
      final TextEditingController _c1 = TextEditingController();
      final TextEditingController _c2 = TextEditingController();

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // الحقل الأول
TextField(
  controller: _c1,
  decoration: InputDecoration(
    filled: true,
    fillColor: Colors.grey.shade200,        // خلفية خفيفة
    labelText: " First",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12), // حواف مستديرة
      borderSide: const BorderSide(color: Colors.blue, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  ),
),

const SizedBox(height: 20),

// الحقل الثاني
TextField(
  controller: _c2,
  decoration: InputDecoration(
    filled: true,
    //fillColor: Colors.grey.shade200,
    labelText: " Second",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blue, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.blue, width: 2),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
  ),
),

const SizedBox(height: 30),

          ElevatedButton(
            onPressed: () { _c2.text = _c1.text; },
            child: const Text(" Copy"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage(text: _c1.text)),
              );
            },
            child: const Text("  Go to second page"),
          ),
        ],
      );
    },
  ),
),

        )

      );
  }
}

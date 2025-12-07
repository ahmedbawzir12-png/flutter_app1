import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'products.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _c1 = TextEditingController();
  TextEditingController _c2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 248, 246),
      //backgroundColor: const Color.fromARGB(255, 212, 210, 239),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        backgroundColor: Color.fromARGB(255, 2, 98, 111),
        centerTitle: true,
        title: Text(
          "تسجيل الدخول",
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/logo.png"),
              ),

              SizedBox(height:0),
              Text(
                "AAK for Watches",
                style: GoogleFonts.tajawal(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              TextField(
                controller: _c1,
                decoration: InputDecoration(
                  hintText: 'اسم المستخدم',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                  //labelText: "username",
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _c2,
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  prefixIcon: Icon(Icons.password_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 2, 98, 111),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                ),
                child: Text(
                  "  تسجيل ",
                  style:GoogleFonts.tajawal(
                    textStyle: TextStyle(color: Colors.white,fontSize: 17.5,fontWeight: FontWeight.w600)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

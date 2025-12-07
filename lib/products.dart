import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'buy_items.dart';
import 'child.dart';
import 'wall.dart';
import 'women_watches.dart';
import 'package:google_fonts/google_fonts.dart';
import 'men_watches.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        backgroundColor: const Color.fromARGB(255, 2, 98, 111),
        centerTitle: true,
        title: Text(
          "المنتجات",
          style: GoogleFonts.tajawal(
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
         iconTheme: IconThemeData(
    color: Colors.white,
  ),
      ),
      endDrawer: Drawer(backgroundColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(7),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Icon(Icons.person, size: 50),
                  ),
                  Expanded(child: ListTile(title: Text("ahmedAmer@gmail.com"))),
                ],
              ),
              ListTile(
                title: Text("الصفحة الرئيسية"),
                leading: Icon(Icons.home, color: Colors.deepOrangeAccent),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products()),
                  );
                },
              ),
              ListTile(
                title: Text("الحساب"),
                leading: Icon(Icons.account_box_rounded, color: Colors.indigoAccent),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyItems()),
                  );
                },
              ),
              ListTile(
                title: Text("الطلب"),
                leading: Icon(Icons.check_box, color: Colors.blueGrey),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BuyItems()),
                  );
                },
              ),
              ListTile(
                title: Text("نبذه عنا"),
                leading: Icon(Icons.help, color: Colors.green),
                onTap: () {},
              ),
              ListTile(
                title: Text("الإعدادات"),
                leading: Icon(Icons.settings, color: Colors.black),
                onTap: () {},
              ),
              ListTile(
                title: Text("الخروج"),
                leading: Icon(Icons.exit_to_app, color: Colors.red),
                 onTap: ()=>SystemNavigator.pop(),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            SizedBox(height: 33),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(96, 90, 88, 88),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  width: 130,
                  height: 250,
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/man_watch.png")),
                      Text(
                        "ساعات رجالية",
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MenWatches()),
                          );
                        },
                        child: Text(
                          "للمزيد",
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 60),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(96, 90, 88, 88),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
        
                  width: 130,
                  height: 250,
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/women_watch.png")),
        
                      Text(
                        "ساعات نسائيه",
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WomenWatches(),
                            ),
                          );
                        },
                        child: Text(
                          "للمزيد",
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(96, 90, 88, 88),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
        
                  width: 130,
                  height: 250,
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/child_watch.png")),
        
                      Text(
                        "ساعات اطفال",
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Child()),
                          );
                        },
                        child: Text(
                          "للمزيد",
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 60),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(96, 90, 88, 88),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  width: 130,
                  height: 250,
                  child: Column(
                    children: [
                      Image(image: AssetImage("images/wall_watch.png")),
                      Text(
                        "ساعات جدران",
                        style: GoogleFonts.tajawal(
                          textStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Wall()),
                          );
                        },
                        child: Text(
                          "للمزيد",
                          style: GoogleFonts.tajawal(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

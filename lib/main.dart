import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 120, 237),
        appBar: AppBar(
          title: Text(
            "CV",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(128, 33, 243, 208),
              width: double.infinity,
             
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('lib/image/Ahmed2.jpg'),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Eng : Ahmed Saeed Bawzir",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Divider(color: Colors.white),

                  Text(
                    " Mobile App Developer",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40,),
                  
                ],
              ),
            ),
           
           
           
        
          
          
          
          
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "ahmedbawzir@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phone",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "770298792",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.white),
            Text(
              "Skills",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Divider(color: Colors.white),
            Row(children: [
              Text("1- Speak English",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400),),
            ],),
            Row(children: [
              Text("2- Mobile App Developer",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400))
            ],),
            Row(children: [
              Text("3- Create content by AI",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400))
            ],),
            Divider(color: Colors.white,),
            Text("Academic qualification",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),
            Divider(color: Colors.white,),
            Row(children: [
              Text("1- General Secondary Education",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400))
            ],),
            Divider(color: Colors.white,),
            Text("Practical qualification",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),
            Row(children: [
              Text("1- Project Management",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w400)),
            ],)
             
          ],
        ),
      ),
    );
  }
}

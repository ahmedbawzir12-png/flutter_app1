import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String text;

  const SecondPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        
        title: const Text(" Second_page",style: TextStyle(color: Colors.white),)),
      body: Center(
        child: Text(
          " Received Text :  $text",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

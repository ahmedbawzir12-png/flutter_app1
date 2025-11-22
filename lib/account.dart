import 'dart:math';

import 'package:flutter/material.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _CheckpageState();
}

class _CheckpageState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        
        width: 100,
        height: 100,
        child: Card(
         
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box, size: 30, color: Colors.blueGrey),
              SizedBox(height: 15),
              Text("account"),
            ],
          ),
        ),
      ),
    );
  }
}

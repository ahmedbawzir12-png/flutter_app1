import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

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
              Icon(Icons.home,size:30,color:Colors.blueGrey),
              SizedBox(height: 15),
              Text("home")
          
            ],
          ),
        ),
      ),
    );
  }
}
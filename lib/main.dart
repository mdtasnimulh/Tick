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
        backgroundColor: Colors.deepOrange[200],
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "To Do",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.deepOrange,
          leading: const Icon(
            Icons.menu
          ),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.deepOrange[400],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(25),
          ),
        ),
      ),
    );
  }
}



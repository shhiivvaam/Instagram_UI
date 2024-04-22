import 'package:flutter/material.dart';
import 'package:providers/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
            // iconTheme: IconThemeData(color: Colors.black),
            color: Colors.grey),
      ),
    );
  }
}

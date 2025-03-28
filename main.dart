import 'package:flutter/material.dart';
import 'student_list.dart';

void main() {
  // entry point for App
  runApp(MyApp()); // run the class MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // UI k lye
    return MaterialApp(
      //provide basic UI for Widgets
      debugShowCheckedModeBanner: false, // Debug Banner Hide on top right
      theme: ThemeData.light(), //  light Mode
      home: StudentListScreen(), //homscreen pr student list show hogi
    );
  }
}

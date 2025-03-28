import 'dart:math';
import 'package:flutter/material.dart';
import 'student_data.dart';

class RandomStudentScreen extends StatefulWidget {
  @override
  _RandomStudentScreenState createState() => _RandomStudentScreenState();
}

class _RandomStudentScreenState extends State<RandomStudentScreen> {
  String selectedStudent = "Click to Pick a Student";

  void pickRandomStudent() {
    final random = Random();
    int index = random.nextInt(students.length);
    setState(() {
      selectedStudent = students[index]["name"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random Picker')),
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedStudent,
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: pickRandomStudent,
              child: Text("Pick Random Student"),
            ),
          ],
        ),
      ),
    );
  }
}

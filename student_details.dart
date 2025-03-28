// This page shows Details of a Student like Name, SAP ID and Attendence Status
import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatelessWidget {
  final String name;
  final bool isPresent;
  final String sapId;

  StudentDetailsScreen({
    // constructor
    required this.name, //jab bhi StudentDetailsScreen ka object banega, to ye tino values deni hi parengi.
    required this.isPresent,
    required this.sapId,
  });

  @override //build method of stateless class is used again
  Widget build(BuildContext context) {
    //UI banane k lye, context for Layout data like size, theme

    return Scaffold(
      // Widger provide UI for AppBar, Body etc, iske baghair ye widgets use nhi hoskte
      appBar: AppBar(
        title: Text('$name\'s Details'),
      ), // top left pr Student name k sath Details likha hoga, '\' likha taky 's' ko as a String le
      backgroundColor: Colors.brown,

      body: Center(
        // widgets ko centre me arrange
        child: Column(
          // center k widgets ko coloums me uper se neche arrange
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name: $name",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "SAP ID: $sapId", //
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Status: ${isPresent ? "Present" : "Absent"}",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

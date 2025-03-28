import 'package:flutter/material.dart';
import 'student_data.dart';
import 'student_details.dart';
import 'random_student.dart';

class StudentListScreen extends StatefulWidget {
  @override
  _StudentListScreenState createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Attendance')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index]["name"]),
            trailing: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    students[index]["isPresent"] ? Colors.green : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  students[index]["isPresent"] = !students[index]["isPresent"];
                });
              },
              child: Text(students[index]["isPresent"] ? "Present" : "Absent"),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => StudentDetailsScreen(
                        name: students[index]["name"],
                        isPresent: students[index]["isPresent"],
                        sapId: students[index]["sapId"].toString(),
                      ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RandomStudentScreen()),
          );
        },
        icon: Icon(Icons.shuffle, color: Colors.white),
        label: Text("Random Picker"),
      ),
    );
  }
}

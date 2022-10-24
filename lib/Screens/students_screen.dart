import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:store/Network/user_api.dart';
import 'package:store/models/Student.dart';

class StudentsScreen extends StatefulWidget {
  const StudentsScreen({super.key});

  @override
  State<StudentsScreen> createState() => _StudentsScreenState();
}

class _StudentsScreenState extends State<StudentsScreen> {
  var api = UserApi();
  List<Student> list = [];
  @override
  void initState() {
    api.GetStudents().then((value) {
      setState(() {
        list = value;
      });
      print(value);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number of Students ${list.length}"),
      ),
      body: Center(
        child: Text("No Students Yet"),
      ),
    );
  }
}

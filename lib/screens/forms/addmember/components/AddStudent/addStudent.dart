import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addmember/components/AddStudent/body.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatelessWidget {
  const AddStudent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            "Add student",
            style: TextStyle(),
          ),
        ),
        body: AddStudentBody());
  }
}
import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addattendance/components/add_attendance_body.dart';
import 'package:flutter/material.dart'; 

class AddAttendance extends StatefulWidget {
  AddAttendance({Key key}) : super(key: key);

  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SvgPicture.asset("assets/images/logo.svg"),
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Text(
          "Add Attendance",
          style: TextStyle(
          ),
        ),
      ),
      body: AddAttendanceBody(),
    );
  }
}
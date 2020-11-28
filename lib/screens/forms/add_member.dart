import 'package:deeper_life_campus/constants.dart';
import 'package:flutter/material.dart'; 

class AddMember extends StatefulWidget {
  AddMember({Key key}) : super(key: key);

  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SvgPicture.asset("assets/images/logo.svg"),
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Text(
          "Add a member",
          style: TextStyle(
          ),
        ),
      ),
      body: Text("Add member"),
    );
  }
}
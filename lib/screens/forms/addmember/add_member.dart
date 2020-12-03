import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addmember/components/add_member_body.dart';
import 'package:flutter/material.dart'; 

class AddMember extends StatelessWidget {
  AddMember({Key key}) : super(key: key);

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
      body: AddMemberBody(),
    );
  }
}
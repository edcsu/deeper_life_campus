import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addmember/components/AddOther/body.dart';
import 'package:flutter/material.dart';

class AddOther extends StatelessWidget {
  const AddOther({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            "Add non student",
            style: TextStyle(),
          ),
        ),
        body: AddOtherBody());
  }
}
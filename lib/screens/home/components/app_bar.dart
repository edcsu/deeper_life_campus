import 'package:deeper_life_campus/constants.dart';
import 'package:flutter/material.dart';

AppBar homeAppBar() {
    return AppBar(
      // leading: SvgPicture.asset("assets/images/logo.svg"),
      automaticallyImplyLeading: false,
      backgroundColor: kPrimaryColor,
      title: Text(
        "Deeper Life Campus Fellowship Uganda",
        style: TextStyle(
        ),
      ),
    );
  }
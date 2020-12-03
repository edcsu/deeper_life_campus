import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addfinance/components/add_finance_body.dart';
import 'package:flutter/material.dart'; 

class AddFinance extends StatelessWidget {
  AddFinance({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: SvgPicture.asset("assets/images/logo.svg"),
        // automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        title: Text(
          "Add Finance",
          style: TextStyle(
          ),
        ),
      ),
      body: AddFinanceBody(),
    );
  }
}
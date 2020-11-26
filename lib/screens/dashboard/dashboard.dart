import 'package:deeper_life_campus/screens/dashboard/components/body.dart';
import 'package:deeper_life_campus/screens/home/components/app_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: DashboardBody(),
    );
  }
}
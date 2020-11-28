import 'package:flutter/cupertino.dart';

class DashItem {
  String title;
  String subTitle;
  IconData icon;
  Color startColor;
  Color endColor;
  dynamic formPage;
  DashItem({
    this.title,
    this.subTitle,
    this.icon,
    this.startColor,
    this.endColor,
    this.formPage,
  });
}

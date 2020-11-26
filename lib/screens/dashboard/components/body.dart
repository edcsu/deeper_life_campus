import 'package:deeper_life_campus/models/dash_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardBody extends StatefulWidget {
  DashboardBody({Key key}) : super(key: key);

  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
   List<DashItem> itemList = [
    new DashItem(
      title: "Add Members",
      subTitle: "A form to add members.",
      icon: Icons.person_add,
      startColor: Color(0xFFD53369),
      endColor: Color(0xFFDAAE51),
    ),
    new DashItem(
      title: "Add Attendance",
      subTitle: "A form to add attendees.",
      icon: Icons.group_add,
      startColor: Color(0xFF00D2FF),
      endColor: Color(0xFF3A47D5),),
    new DashItem(
      title: "Add Finance",
      subTitle: "A form to add collections.",
      icon: Icons.monetization_on,
      startColor: Color(0xFFFF0099),
      endColor: Color(0xFF493240),),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: GridView.count(
            childAspectRatio: 1.8, 
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            padding: EdgeInsets.only(left: 16, right:16),
            children: itemList.map((item) => 
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      item.startColor,
                      item.endColor,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      item.icon,
                      color: Colors.white,
                      size: 64,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      item.subTitle,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),        
            ).toList(),
          ),
        ),
      ],
    );
  }
}
import 'package:deeper_life_campus/models/dash_item.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class DashboardBody extends StatefulWidget {
  DashboardBody({Key key}) : super(key: key);

  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
   List<DashItem> itemList = [
    new DashItem(
      title: "Add a Member",
      subTitle: "A form to add a member.",
      icon: Icons.person_add,
      startColor: Color(0xFFD53369),
      endColor: Color(0xFFDAAE51),
    ),
    new DashItem(
      title: "Add Attendance",
      subTitle: "A form to add attendance details.",
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
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: GradientCard(
              gradient:  LinearGradient(
                colors: [
                  item.startColor,
                  item.endColor,
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              child: InkWell(
                borderRadius: BorderRadius.circular(15.0),
                splashColor: Colors.white,
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Drugcategories()),
                  // );
                },
                child: Column(
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
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          item.subTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                  ],
                ),
              ),
            ),
          )      
            ).toList(),
          ),
        ),
      ],
    );
  }
}
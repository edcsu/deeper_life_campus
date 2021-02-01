import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/forms/addmember/components/AddOther/addOther.dart';
import 'package:deeper_life_campus/screens/forms/addmember/components/AddStudent/addStudent.dart';
import 'package:flutter/material.dart';

class AddMemberBody extends StatelessWidget {
  const AddMemberBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(children: <Widget>[
      Flexible(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Choose a category",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        width: size.width * 0.6,
        height: size.height * 0.08,
        child: FlatButton.icon(
          padding: EdgeInsets.all(8),
          shape: StadiumBorder(),
          icon: Icon(Icons.assignment_ind),
          label: Text('Student', style: TextStyle(fontSize: 25.0)),
          textColor: Colors.white,
          color: Colors.pink[400],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AddStudent();
                },
              ),
            );
          },
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        width: size.width * 0.6,
        height: size.height * 0.08,
        child: FlatButton.icon(
          padding: EdgeInsets.all(8),
          shape: StadiumBorder(),
          icon: Icon(Icons.account_circle),
          label: Text('Non Student', style: TextStyle(fontSize: 25.0)),
          textColor: Colors.white,
          color: Colors.green[400],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AddOther();
                },
              ),
            );
          },
        ),
      ),
    ]));
  }
}

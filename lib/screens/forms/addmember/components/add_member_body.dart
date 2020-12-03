import 'package:flutter/material.dart';

class AddMemberBody extends StatefulWidget {
  AddMemberBody({Key key}) : super(key: key);

  @override
  _AddMemberBodyState createState() => _AddMemberBodyState();
}

class _AddMemberBodyState extends State<AddMemberBody> {
  
  final _memberFormKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Form(
       key: _memberFormKey,
       child: ListView(
        children: <Widget>[
          Expanded(
            child: new ListTile(
              leading: const Icon(Icons.person),
              title: TextFormField(
                decoration: new InputDecoration(
                  hintText: "First Name",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.person),
              title:TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: Icon(Icons.phone),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Department",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),Expanded(
            child: ListTile(
              leading: const Icon(Icons.email),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Program",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Year Enroll",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.phone),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Year Graduated",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.email),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.phone),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Country",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: Icon(Icons.email),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Date Of Birth",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () => {}, 
              child: Text("SUBMIT") 
            ),
          ),
        ],
       ),
    );
  }
}
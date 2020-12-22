import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddMemberBody extends StatefulWidget {
  AddMemberBody({Key key}) : super(key: key);

  @override
  _AddMemberBodyState createState() => _AddMemberBodyState();
}

class _AddMemberBodyState extends State<AddMemberBody> {
  
  final form = FormGroup({
    'name': FormControl(value: 'John Doe'),
    'email': FormControl(value: 'johndoe@email.com'),
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: this.form,
      child: Column(
        children: <Widget>[
          ReactiveTextField(
            formControlName: 'name',
          ),
          ReactiveTextField(
            formControlName: 'email',
          ),
        ],
      ),
    );
  }
}

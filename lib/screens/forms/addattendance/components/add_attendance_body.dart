import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddAttendanceBody extends StatefulWidget {
  AddAttendanceBody({Key key}) : super(key: key);

  @override
  _AddAttendanceBodyState createState() => _AddAttendanceBodyState();
}

class _AddAttendanceBodyState extends State<AddAttendanceBody> {
  final attendanceForm = FormGroup({
    'typeOfService': FormControl<String>(validators: [Validators.required]),
    'attendance': FormControl<int>(validators: [
      Validators.required,
      Validators.number,
      Validators.min(0)
    ]),
    'dateOfService': FormControl<DateTime>(validators: [Validators.required])
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: this.attendanceForm,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ReactiveDropdownField<String>(
              formControlName: 'typeOfService',
              decoration:
                  InputDecoration(labelText: 'Select type of service...'),
              items: [
                DropdownMenuItem(
                  value: "Sunday Service",
                  child: Text('Sunday Service'),
                ),
                DropdownMenuItem(
                  value: "Thursday Service",
                  child: Text('Thursday Service'),
                ),
                DropdownMenuItem(
                  value: "Bible Study",
                  child: Text('Bible Study'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ReactiveTextField(
              formControlName: 'attendance',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Attendance',
              ),
            ),
            SizedBox(height: 20.0),
            ReactiveTextField(
              formControlName: 'dateOfService',
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Date',
                suffixIcon: ReactiveDatePicker(
                  formControlName: 'dateOfService',
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2100),
                  builder: (context, picker, child) {
                    return IconButton(
                      onPressed: picker.showPicker,
                      icon: Icon(Icons.date_range),
                    );
                  },
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReactiveFormConsumer(
                  builder: (context, form, child) {
                    return RaisedButton(
                      child: Text('SUBMIT'),
                      onPressed: form.valid ? () => print(form.value) : null,
                    );
                  },
                ),
                RaisedButton(
                  child: Text('RESET'),
                  onPressed: () => attendanceForm.reset(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

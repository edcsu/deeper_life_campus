import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddFinanceBody extends StatefulWidget {
  AddFinanceBody({Key key}) : super(key: key);

  @override
  _AddMemberBodyState createState() => _AddMemberBodyState();
}

class _AddMemberBodyState extends State<AddFinanceBody> {

    final attendanceForm = FormGroup({
    'typeOfService': FormControl<String>(validators: [Validators.required]),
    'offering': FormControl<int>(validators: [Validators.required]),
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
            ReactiveTextField(
              formControlName: 'typeOfService',
              decoration: InputDecoration(
                labelText: 'Type Of Service',
              ),
            ),
            SizedBox(height: 20.0),
            ReactiveTextField(
              formControlName: 'offering',
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Offering',
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
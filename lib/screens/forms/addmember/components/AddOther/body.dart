import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddOtherBody extends StatefulWidget {
  AddOtherBody({Key key}) : super(key: key);

  @override
  _AddOtherBodyState createState() => _AddOtherBodyState();
}

class _AddOtherBodyState extends State<AddOtherBody> {
  final form = FormGroup({
    'firstName': FormControl<String>(validators: [Validators.required]),
    'lastName': FormControl<String>(validators: [Validators.required]),
    'email': FormControl<String>(
        validators: [Validators.required, Validators.email]),
    'phoneNumber': FormControl<String>(validators: [Validators.required]),
    'dateOfBirth': FormControl<DateTime>(validators: [Validators.required]),
    'occupation': FormControl<String>()
  });

  List<Step> steps = [
    Step(
      title: const Text('Personal Information'),
      isActive: true,
      state: StepState.indexed,
      content: Column(
        children: <Widget>[
          ReactiveTextField(
            formControlName: 'firstName',
            decoration: InputDecoration(
              labelText: 'First Name',
            ),
          ),
          ReactiveTextField(
            formControlName: 'lastName',
            decoration: InputDecoration(
              labelText: 'Last Name',
            ),
          ),
          ReactiveTextField(
            formControlName: 'email',
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          ReactiveTextField(
            formControlName: 'phoneNumber',
            decoration: InputDecoration(
              labelText: 'Phone number',
            ),
          ),
          ReactiveTextField(
            formControlName: 'dateOfBirth',
            decoration: InputDecoration(
              labelText: 'Date Of Birth',
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.indexed,
      title: const Text('Campus Information'),
      content: Column(
        children: <Widget>[
          ReactiveTextField(
            formControlName: 'department',
            decoration: InputDecoration(
              labelText: 'Department',
            ),
          ),
          ReactiveTextField(
            formControlName: 'program',
            decoration: InputDecoration(
              labelText: 'Program',
            ),
          ),
          ReactiveTextField(
            formControlName: 'country',
            decoration: InputDecoration(
              labelText: 'country',
            ),
          ),
          ReactiveTextField(
            formControlName: 'yearEnrolled',
            decoration: InputDecoration(
              labelText: 'Year Enrolled',
            ),
            keyboardType: TextInputType.number,
          ),
          ReactiveTextField(
            formControlName: 'yearGraduated',
            decoration: InputDecoration(
              labelText: 'Year Graduated',
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    ),
  ];

  int _currentStep = 0;
  bool complete = false;

  next() {
    _currentStep + 1 != steps.length
        ? goTo(_currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (_currentStep > 0) {
      goTo(_currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => _currentStep = step);
  }

  void _onSubmit() {
    print('The form is valid!');
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: this.form,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 5,
            child: Stepper(
              steps: <Step>[
                Step(
                  title: const Text('Personal Information'),
                  isActive: _currentStep == 0 ? true : false,
                  state: _currentStep == 0
                      ? StepState.editing
                      : StepState.complete,
                  content: Column(
                    children: <Widget>[
                      ReactiveTextField(
                        formControlName: 'firstName',
                        decoration: InputDecoration(
                          labelText: 'First Name',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'lastName',
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'email',
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'phoneNumber',
                        decoration: InputDecoration(
                          labelText: 'Phone number',
                        ),
                      ),
                      ReactiveTextField(
                        formControlName: 'dateOfBirth',
                        readOnly: true,
                        decoration: InputDecoration(
                          labelText: 'Date Of Birth',
                          suffixIcon: ReactiveDatePicker(
                            formControlName: 'dateOfBirth',
                            firstDate: DateTime(1960),
                            lastDate: DateTime(2099),
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
                    ],
                  ),
                ),
                Step(
                  isActive: _currentStep == 1 ? true : false,
                  state: _currentStep == 1
                      ? StepState.editing
                      : StepState.complete,
                  title: const Text('Other Information'),
                  content: Column(
                    children: <Widget>[
                      ReactiveTextField(
                        formControlName: 'occupation',
                        decoration: InputDecoration(
                          labelText: 'Occupation (optional)',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              currentStep: _currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: ReactiveFormConsumer(
                  builder: (context, form, child) {
                    return ElevatedButton(
                      child: Text('Submit'),
                      onPressed: form.valid ? _onSubmit : null,
                    );
                  },
                ),
              ),
              Flexible(
                flex: 2,
                child: ElevatedButton(
                  child: Text('RESET'),
                  onPressed: () => form.reset(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

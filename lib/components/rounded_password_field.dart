import 'package:deeper_life_campus/components/text_field_container.dart';
import 'package:deeper_life_campus/constants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatefulWidget {

  RoundedPasswordField({Key key}) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _obscurePassword = true;

   void _toggle() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            obscureText: _obscurePassword,
            onChanged: (value) {},
            decoration: InputDecoration(
                hintText: "Password",
                icon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                      color: kPrimaryColor,
                    ),
                    onPressed: () {_toggle();}),
                border: InputBorder.none)));
  }
}



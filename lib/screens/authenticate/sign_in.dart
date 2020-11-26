import 'package:deeper_life_campus/components/rounded_button.dart';
import 'package:deeper_life_campus/components/rounded_input_field.dart';
import 'package:deeper_life_campus/components/rounded_password_field.dart';
import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/home/home.dart';
import 'package:deeper_life_campus/screens/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: size.width * 0.8,
              child: SvgPicture.asset(
                "assets/images/logo.svg",
                height: size.height * 0.3,
              ),
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: kPrimaryColor,
              ),
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      )
    );
  }
}



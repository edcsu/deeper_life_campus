import 'package:deeper_life_campus/constants.dart';
import 'package:deeper_life_campus/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deeper Life Campus Fellowship Uganda',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Deeper Life Campus Fellowship Uganda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text('Welcome to Deeper Life Campus Fellowship Uganda',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      textAlign: TextAlign.center,
      ),
      image: Image.asset(
        "assets/images/logo.jpg",
        width: size.width * 0.35,
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Deeper Life Campus"),
      loaderColor: kPrimaryColor
    );
   }
}

class AfterSplash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrapper();
  }
}
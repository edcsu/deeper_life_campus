import 'package:deeper_life_campus/screens/dashboard/dashboard.dart';
import 'package:deeper_life_campus/screens/home/components/app_bar.dart';
import 'package:deeper_life_campus/screens/home/components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedTabIndex = 0; 

  List _pages = [
    Dashboard(),  
    Text("Account"), 
  ]; 

   _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index; 
    }); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: homeAppBar(),
      body: Body(pages: _pages, selectedTabIndex: _selectedTabIndex), 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex, 
        onTap: _changeIndex, 
        type: BottomNavigationBarType.fixed, 
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")), 
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("My Account")), 
        ], 
      ),
    );
  }
}
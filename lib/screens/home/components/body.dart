import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required List pages,
    @required int selectedTabIndex,
  }) : _pages = pages, _selectedTabIndex = selectedTabIndex, super(key: key);

  final List _pages;
  final int _selectedTabIndex;

  @override
  Widget build(BuildContext context) {
    return Center(child: _pages[_selectedTabIndex]);
  }
}
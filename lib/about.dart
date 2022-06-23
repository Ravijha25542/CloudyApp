import 'package:flutter/material.dart';

import 'navigation_drawer_widget.dart';

// ignore: use_key_in_widget_constructors
class Aboutus extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
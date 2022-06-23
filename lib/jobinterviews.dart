import 'package:flutter/material.dart';
import 'package:flutter_application_1/navigation_drawer_widget.dart';

// ignore: use_key_in_widget_constructors
class JobinterviewsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      
      appBar: AppBar(
        title: Text('Job Interviews'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
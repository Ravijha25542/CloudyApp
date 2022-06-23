import 'package:flutter/material.dart';

import 'navigation_drawer_widget.dart';

class InterviewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Interview Q&As'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
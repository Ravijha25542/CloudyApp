import 'package:flutter/material.dart';

import 'navigation_drawer_widget.dart';

class UpdatesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Updates'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
      ),
    );
  }
}
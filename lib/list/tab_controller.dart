import 'package:demo/list/demo.dart';
import 'package:demo/list/flutter%20catalog.dart';
import 'package:flutter/material.dart';

class TabControllerExmple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tabs Demo'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.contacts), text: "Tab 1"),
              Tab(icon: Icon(Icons.camera_alt), text: "Tab 2")
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Name(),
            Catalog(),
          ],
        ),
      ),
    ));
  }
}

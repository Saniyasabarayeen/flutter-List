import 'package:demo/list/demo.dart';
import 'package:demo/list/tab_controller.dart';
import 'package:demo/login/lgin_page.dart';
import 'package:flutter/material.dart';

import 'list/flutter catalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        home:TabBarController(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:listview/listview.dart';
import 'package:listview/listview_with_list.dart';
import 'package:listview/listview_builder.dart';
import 'package:listview/listview_separated.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: ScrollingScreen4(),
    );
  }
}

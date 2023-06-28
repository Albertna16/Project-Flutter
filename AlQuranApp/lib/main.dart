import 'package:alquranapp/Models/detail_surah.dart';
import 'package:alquranapp/Screen/detail_surah_page.dart';
import 'package:alquranapp/Screen/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Al-Quran',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // A widget which will be started on application startup
      home: Homepage(),
    );
  }
}

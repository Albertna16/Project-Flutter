import 'package:flutter/material.dart';

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
      home: FirstScreen(text: 'First Screen'),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final String text;
  const FirstScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(text),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Hi",
            style: TextStyle(fontSize: 40),
          ),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 7),
            // borderRadius: BorderRadius.circular(10), // jika bentuk container kotak, maka gunakan ini agar tidak membentuk lancip pada pucuk sudut
            boxShadow: [
              // berbentuk array jadi bisa ditambahkan beberapa shadow lagi
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

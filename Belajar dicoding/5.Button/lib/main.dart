import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Halaman Pertama"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              child: Text("Elevated Button"),
              onPressed: () {
                // aksi ketika button di klik, biasanya untuk masuk ke halaman baru
              },
            ),
            TextButton(
              child: Text("Text Button"),
              onPressed: () {
                // aksi ketika button di klik
              },
            ),
            OutlinedButton(
              child: Text("Outlined Button"),
              onPressed: () {
                // aksi ketika button di klik
              },
            ),
            IconButton(
              icon: Icon(
                Icons.volume_up,
              ),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                // aksi ketika button di klik
              },
            ),
          ],
        ),
      ),
    );
  }
}

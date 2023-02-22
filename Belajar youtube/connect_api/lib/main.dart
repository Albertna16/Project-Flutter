// ignore_for_file: deprecated_member_use
// cara menyambungkan API ke aplikasi kita itu ada 3 hal:
// 1. buat class dulu sebagai model
// 2. membuat method untuk memapping object tadi ke kelas yang kita buat
// 3. method untuk manggil API nya

import 'package:connect_api/post_result.dart';
import 'package:connect_api/user_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// kenapa memakai statefull widget karena nantik kita update tampilan
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late PostResult postResult; ini error bisa diganti dengan dibawah ini
  dynamic postResult = null;
  dynamic user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI("4").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("Get"),
              ),
              Text((postResult != null)
                  ? postResult.id +
                      " | " +
                      postResult.name +
                      " | " +
                      postResult.job
                  : "Tidak ada data"),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI("Albert", "Mobile Developer")
                      .then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("Post"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Exception has occurred.
// LateError (LateInitializationError: Field 'postResult' has not been initialized.)
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new halamanSatu(), // untuk home hanay boleh 1 saja, lalu untuk halaman satu menampilkan text
    //home: new halamanDua(), // lalu untuk galaman 2 menampilkan icon
  ));
}

class halamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Container(
        // id kotak
        color: Colors.blue[400],
        width: 200.0,
        height: 200.0,
        child: new Center(
          child: new Text(
            "Selamat datang",
            style: new TextStyle(
                color: Colors.greenAccent,
                fontSize: 20.0,
                fontFamily: 'Times New Roman'),
          ),
        ),
      ),
    ));
  }
}

class halamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Container(
        // id kotak
        color: Colors.blue[400],
        width: 200.0,
        height: 200.0,
        child: new Center(
          child: new Icon(Icons.alarm, color: Colors.amber[400], size: 70.0,)
        ),
      ),
      )
    );
  }
}
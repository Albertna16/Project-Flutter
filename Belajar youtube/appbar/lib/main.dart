import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Aplikasi game", // nama aplikasinya
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent[700],
        leading: new Icon(
            Icons.home), // leading untuk menaruh suatu icon di sebelah kiri
        title: new Center(
          child: new Text("Aplikasi Gajelas"),
        ),
        actions: <Widget>[
          new Icon(Icons.search) // ikonnya ada disebelah kanan
        ],
      ),
      
      body: new Container(
          child: new Row(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Icon(
                Icons.local_atm,
                size: 70.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.local_cafe,
                size: 70.0,
                color: Colors.red,
              ),
            ],
          ),
          new Column(children: <Widget>[
            new Icon(
              Icons.local_cafe,
              size: 70.0,
              color: Colors.red,
            ),
            new Icon(
              Icons.local_airport,
              size: 70.0,
              color: Colors.red,
            ),
          ]),
          new Column(
            children: <Widget>[
              new Icon(
                Icons.local_drink,
                size: 70.0,
                color: Colors.red,
              ),
              new Icon(
                Icons.local_dining,
                size: 70.0,
                color: Colors.red,
              ),
            ],
          )
        ],
      )),
    );
  }
}

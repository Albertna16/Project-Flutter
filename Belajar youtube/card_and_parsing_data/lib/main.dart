import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Selamat datang"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // untuk menaruh icon di posisi tengah
          children: [
            new cardSaya(
              icon: Icons.home,
              warna: Colors.brown,
            ),
            new cardSaya(
              icon: Icons.alarm,
              warna: Colors.red,
            ),
            new cardSaya(
              icon: Icons.lock_clock,
              warna: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class cardSaya extends StatelessWidget {

  cardSaya ({this.icon, this.warna});
  
  final IconData? icon;
  final Color? warna;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
          child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: warna,
          ),
          new Text(
            "susah ngaturnya", style: new TextStyle(fontSize: 20.0),
          )
        ],
      )),
    );
  }
}

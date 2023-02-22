import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration( // gradasi bisa pakek boxdecoration ini
        color: Colors.green,
        border: Border(
          top: BorderSide(color: Colors.purple, width: 5),
        ),
      ),
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: "Comment",
        ),
        Tab(
          icon: Icon(Icons.place),
          text: "Maps",
        ),
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            title: Text("Contoh Tab Bar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(color: Colors.amber, child: myTabBar),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Ini Tab 1"),
              ),
              Center(
                child: Text("Ini Tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

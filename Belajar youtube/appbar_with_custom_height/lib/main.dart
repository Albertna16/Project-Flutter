import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // untuk menghilangkan tanda debug di sisi kanan atas
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(200), // untuk mengatur ketinggian appbar
          child: AppBar(
            backgroundColor: Colors.greenAccent,
            flexibleSpace: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.ac_unit_sharp),
                    Container(
                      margin: EdgeInsets.all(5), // untuk mengatur margin
                      child: Text(
                        // flexibleSpace untuk mengatur tata letak
                        "AppBar with Custom Height",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

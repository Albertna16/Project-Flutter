import 'package:flutter/material.dart';

// Selain memasukkan widget satu per satu ke dalam children dari ListView, Anda juga dapat menampilkan list secara dinamis. Ini sangat berguna ketika Anda memiliki banyak item dengan jumlah yang tidak menentu.

class ScrollingScreen2 extends StatelessWidget {
  final List<int> numberList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView with List"),
      ),
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '$number', // Ditampilkan sesuai item
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// Perhatikan di akhir kita perlu mengembalikan fungsi map menjadi objek List lagi dengan fungsi .toList().

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
      home: PakeImageAsset(),
    );
  }
}

class PakeImageNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("First Screen"),
      ),
      body: Center(
        child: Image.network(
          "https://upload.wikimedia.org/wikipedia/id/thumb/c/cc/Chelsea_FC.svg/1200px-Chelsea_FC.svg.png",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

class PakeImageAsset extends StatelessWidget {
// pertama buat folder gambar lalu masukkan gambar, dan setelah itu masuk ke file pubspec.yaml untuk mendaftarkan image, contoh: - gambar/upnvjt.png, jika gambar banyak maka bisa seperti ini saja => - gambar/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          title: Text(
            // untuk font, pertama download dahulu lalu buat folder font dan masukkan fontnya, setelah itu daftarkan di dalam file pubspec.yaml dan klik pub get
            "First Screen",
            style: TextStyle(fontFamily: "Splash"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Image.asset("gambar/upnvjt.png", width: 200, height: 200),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}

// include library "qr_flutter: ^2.1.0+55" in pubspec.yaml

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6,
            backgroundColor: Colors.greenAccent,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(0), // jarak antara tepi dan qr code nya
            size: 300,
            data: "https://siamik.upnjatim.ac.id/html/siamik/index.asp",
          ),
        ),
      ),
    );
  }
}

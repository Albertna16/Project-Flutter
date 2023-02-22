import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text("Custom Clipper"),
        ),
        body: Center(
          child: ClipPath(
            clipper: MyClipper(),
            child: Image(
              width: 300,
              image: NetworkImage(
                  "https://cdns.klimg.com/merdeka.com/i/w/news/2020/08/26/1213160/540x270/tak-perlu-ke-luar-negeri-10-wisata-alam-eksotis-ini-hanya-ditemukan-diindonesiaaja.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    // path.cubicTo(size.width/2, size.height, size.width/4, size.height*1.5, size.width, size.height);
    path.quadraticBezierTo(size.width/2, size.height*0.75, size.width, size.height); // bikin kurva agar melengkung
    path.lineTo(size.width, 0);
    // path.cubicTo(x1, y1, x2, y2, x3, y3) // kayak gelombang
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}
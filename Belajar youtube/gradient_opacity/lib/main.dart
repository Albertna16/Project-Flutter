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
          title: Text("Gradient Opacity"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (rectangle){
              return LinearGradient(colors: [Colors.black, Colors.transparent],begin: Alignment.topCenter, end: Alignment.bottomCenter).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.width),);
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: NetworkImage(
                  "https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  final String message = 'Haii, Muhammad Albert';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text("Pindah Screen"),
          onPressed: () {
            // dibawah ini merupakan rumus Navigator,push
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(message)));
          },
        ),
      ),
    );
  }
}

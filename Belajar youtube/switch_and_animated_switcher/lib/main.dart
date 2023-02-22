import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool onOff = false;

  Widget myWidget = Container(
    width: 300,
    height: 150,
    decoration: BoxDecoration(
        color: Colors.redAccent,
        border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Animated Switcher"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                child: myWidget,
                duration: const Duration(seconds: 1),
                transitionBuilder: (child, Animation) =>
                    // ScaleTransition(
                    //   scale: Animation,
                    //   child: child,
                    // ),
                    RotationTransition(
                  turns: Animation,
                  child: child,
                ),
              ),
              Switch(
                activeColor: Colors.greenAccent,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.redAccent,
                value: onOff,
                onChanged: (newValue) {
                  onOff = newValue;
                  setState(
                    () {
                      if (onOff) {
                        myWidget = Container(
                          key: ValueKey(1),
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );

                        // SizedBox(
                        //   width: 300,
                        //   height: 150,
                        //   child: Center(
                        //     child: const Text(
                        //       "Switch ON",
                        //       style: TextStyle(
                        //           color: Colors.greenAccent,
                        //           fontWeight: FontWeight.w700,
                        //           fontSize: 20),
                        //     ),
                        //   ),
                        // );
                      } else {
                        myWidget = Container(
                          key: ValueKey(2),
                          width: 300,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              border:
                                  Border.all(color: Colors.black, width: 3)),
                        );
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

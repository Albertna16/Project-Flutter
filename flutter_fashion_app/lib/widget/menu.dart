import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final List<String> brand = <String>[
    "Nike",
    "Adidas",
    "Puma",
    "Rexus",
    "Polytron",
    "Samsung",
    "Vivo",
    "Oppo"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: brand.length,
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      itemBuilder: (Buildcontext, int index) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(Icons.abc),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  brand[index],
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

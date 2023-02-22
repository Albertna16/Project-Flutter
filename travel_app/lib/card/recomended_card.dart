import 'package:flutter/material.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.key),
                SizedBox(width: 10),
                Text("Halo ges"),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

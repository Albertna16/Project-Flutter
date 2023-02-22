import 'package:flutter/material.dart';

class TravelPlaceCard extends StatelessWidget {
  const TravelPlaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network("https://cdn.pixabay.com/photo/2017/07/11/19/55/germany-2494819_960_720.jpg", width: double.infinity, height: double.infinity),
              ),
            ),
            SizedBox(height: 15),
            Text("Black Forest"),
            SizedBox(
              height: 5,
            ),
            Text("Germany"),
          ],
        ),
      ),
    ),
    SizedBox(width: 10,),
      ],
    );
  }
}

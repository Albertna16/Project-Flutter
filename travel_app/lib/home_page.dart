import 'package:flutter/material.dart';
import 'package:travel_app/card/recomended_card.dart';
import 'package:travel_app/card/travel_place_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // foto profil
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Image.network('https://images.app.goo.gl/VTM9nJZzivpbysJM9', width: 50, height: 50,),
                Icon(Icons.key, color: Colors.white),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),

            SizedBox(height: 25),

            // search bar
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.search_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search Place")
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),

            // text travel place
            Text(
              "Travel Place",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // listview horizontal
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  TravelPlaceCard(),
                  TravelPlaceCard(),
                  TravelPlaceCard(),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // text recomended
            Text(
              "Recomended",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // listview vertical
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    RecomendedCard(),
                    RecomendedCard(),
                    RecomendedCard(),
                    RecomendedCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

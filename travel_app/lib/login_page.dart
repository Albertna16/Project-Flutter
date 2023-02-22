import 'package:flutter/material.dart';
import 'package:travel_app/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.network("https://i.pinimg.com/736x/cf/b0/62/cfb062150fa38cc6ab940f62f9c90402.jpg", width: double.infinity, height: double.infinity, fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text("Explore Your Dream Destination", style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: Colors.white)),
                ),
              ),
              SizedBox(height: 250),
              Hero(
                tag: 'Get Started',
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Colors.green[600],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Get Started", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
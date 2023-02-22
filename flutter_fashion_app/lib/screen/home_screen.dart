import 'package:flutter_fashion_app/widget/discount_slider.dart';
import 'package:flutter_fashion_app/widget/menu.dart';
import 'package:flutter_fashion_app/widget/product.dart';
import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffe1e8),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "GCOMMERC",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.menu, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffff4779),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add_location,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Send to :",
                                style: TextStyle(color: Colors.grey.shade500),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Bekasi, Indonesia",
                                style: TextStyle(color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffff4779),
                          ),
                          child: Center(
                            child: Text(
                              "Change",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                color: Color(0xffffe1e8),
                child: Menu(),
              ),
              Expanded(
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Discount(),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Most Popular",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "View More",
                              style: TextStyle(
                                color: Color(0xffff4779),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 218,
                          width: 330,
                          color: Colors.white,
                          child: ProductGridView(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

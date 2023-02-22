import 'package:flutter_fashion_app/package/product_detail.dart';
import 'package:flutter_fashion_app/widget/rating_bar.dart';
import 'package:flutter_fashion_app/widget/size_list.dart';
import 'package:flutter/material.dart';

class detail_product extends StatelessWidget {
  final productDetail product;
  detail_product({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman kedua", style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xffffe1e8),
      ),
      body: SafeArea(
        // Widget SafeArea ini akan memberikan padding yang secara otomatis menyesuaikan perangkat yang digunakan.
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Image(
                  width: double.infinity,
                  image: AssetImage(
                    product.image_product!,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffe1e8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((30)),
                    topRight: Radius.circular((30)),
                  ),
                ),
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product.name_product!,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Rating_Product(ratingProduct: product.rating),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "270 Viewer",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // text size
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // pilihan size
                    sizeList(),
                    // text description
                    // description
                    // text price
                    // price
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

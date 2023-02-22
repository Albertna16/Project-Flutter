import 'package:flutter_fashion_app/package/product_detail.dart';
import 'package:flutter_fashion_app/screen/detail.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({Key? key}) : super(key: key);
  _ProductGridViewState createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  final myProduct = detailList.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // implement GridView.builder
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: myProduct,
          itemBuilder: (BuildContext ctx, index) {
            final productDetail product = detailList[index];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return detail_product(product: product);
                }));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffffe1e8),
                ),
                height: double.infinity,
                width: 330,
                child: Column(
                  children: [
                    Flexible(
                      flex: 6,
                      child: Image(
                        height: 150,
                        width: 300,
                        image: AssetImage(
                          product.image_product!,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.stars, color: Colors.black),
                          SizedBox(
                            width: 10,
                          ),
                          Text("5.0", style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Text(
                        product.name_product!,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:fashion_application/package/product_detail.dart';
import 'package:fashion_application/screen/detail.dart';
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
            childAspectRatio: 0.8, // <-- ubah nilai aspect ratio
            crossAxisSpacing: 10, // <-- ubah nilai cross axis spacing
            mainAxisSpacing: 10, // <-- ubah nilai main axis spacing
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
                  color: const Color(0xffffe1e8),
                ),
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .stretch, // <-- agar widget Row dapat meregang
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image(
                          image: AssetImage(
                            product.image_product!,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            product.name_product!,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.black),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp " + product.price_product!,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              height: double
                                  .infinity, // <-- ubah tinggi widget Container
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffff4779),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  "Beli",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final List<String> brand = <String>[
    "Nike",
    "Adidas",
    "Puma",
    "Gucci",
    "Chanel",
    "Zara",
    "Prada",
    "Kenzo"
  ];

  final List<String> image_brand = <String>[
    "https://w7.pngwing.com/pngs/224/696/png-transparent-nike-logo-movement-brands-black.png",
    "https://w7.pngwing.com/pngs/403/367/png-transparent-adidas-logo-adidas-logo-cdr-angle-text.png",
    "https://w7.pngwing.com/pngs/527/442/png-transparent-puma-logo-iron-on-adidas-brand-adidas-mammal-cat-like-mammal-carnivoran.png",
    "https://w7.pngwing.com/pngs/584/244/png-transparent-gucci-logo-brand-fashion-others-text-fashion-logo.png",
    "https://w7.pngwing.com/pngs/26/175/png-transparent-chanel-fashion-logo-brand-iron-on-chanel-logo-text-coco-chanel-fashion-design.png",
    "https://w7.pngwing.com/pngs/39/910/png-transparent-zara-fashion-clothes-clothing-brands-and-logos-icon-thumbnail.png",
    "https://w7.pngwing.com/pngs/842/241/png-transparent-chanel-brand-perfume-bag-fashion-chanel-thumbnail.png",
    "https://w7.pngwing.com/pngs/830/600/png-transparent-brand-kenzo-fashion-clothing-logo-design-text-perfume-logo-thumbnail.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brand.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10),
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
                    padding: EdgeInsets.all(10),
                    child: Image.network(image_brand[index]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    brand[index],
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
